
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_recent_mtinfo {int check_set; scalar_t__ hit_count; char* name; scalar_t__ seconds; } ;
struct xt_mtchk_param {struct xt_recent_mtinfo* matchinfo; } ;
struct recent_table {int refcnt; int list; int name; int * iphash; int lru_list; } ;
struct proc_dir_entry {void* gid; void* uid; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int XT_RECENT_CHECK ;
 scalar_t__ XT_RECENT_NAME_LEN ;
 int XT_RECENT_REMOVE ;
 int XT_RECENT_SET ;
 int XT_RECENT_UPDATE ;
 int hweight8 (int) ;
 void* ip_list_gid ;
 int ip_list_hash_size ;
 int ip_list_perms ;
 void* ip_list_uid ;
 scalar_t__ ip_pkt_list_tot ;
 int kfree (struct recent_table*) ;
 struct recent_table* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct proc_dir_entry* proc_create_data (int ,int ,int ,int *,struct recent_table*) ;
 int proc_old_dir ;
 int recent_lock ;
 int recent_mt_fops ;
 int recent_mutex ;
 int recent_old_fops ;
 int recent_proc_dir ;
 struct recent_table* recent_table_lookup (char*) ;
 int remove_proc_entry (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strcpy (int ,char*) ;
 scalar_t__ strnlen (char*,scalar_t__) ;
 int tables ;

__attribute__((used)) static bool recent_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_recent_mtinfo *info = par->matchinfo;
 struct recent_table *t;



 unsigned i;
 bool ret = 0;

 if (hweight8(info->check_set &
       (XT_RECENT_SET | XT_RECENT_REMOVE |
        XT_RECENT_CHECK | XT_RECENT_UPDATE)) != 1)
  return 0;
 if ((info->check_set & (XT_RECENT_SET | XT_RECENT_REMOVE)) &&
     (info->seconds || info->hit_count))
  return 0;
 if (info->hit_count > ip_pkt_list_tot)
  return 0;
 if (info->name[0] == '\0' ||
     strnlen(info->name, XT_RECENT_NAME_LEN) == XT_RECENT_NAME_LEN)
  return 0;

 mutex_lock(&recent_mutex);
 t = recent_table_lookup(info->name);
 if (t != ((void*)0)) {
  t->refcnt++;
  ret = 1;
  goto out;
 }

 t = kzalloc(sizeof(*t) + sizeof(t->iphash[0]) * ip_list_hash_size,
      GFP_KERNEL);
 if (t == ((void*)0))
  goto out;
 t->refcnt = 1;
 strcpy(t->name, info->name);
 INIT_LIST_HEAD(&t->lru_list);
 for (i = 0; i < ip_list_hash_size; i++)
  INIT_LIST_HEAD(&t->iphash[i]);
 spin_lock_bh(&recent_lock);
 list_add_tail(&t->list, &tables);
 spin_unlock_bh(&recent_lock);
 ret = 1;
out:
 mutex_unlock(&recent_mutex);
 return ret;
}
