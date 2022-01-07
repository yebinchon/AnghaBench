
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dlm_ls {TYPE_1__* ls_dirtbl; } ;
struct dlm_direntry {int master_nodeid; int list; } ;
struct TYPE_2__ {int lock; } ;


 size_t dir_hash (struct dlm_ls*,char*,int) ;
 int kfree (struct dlm_direntry*) ;
 int list_del (int *) ;
 int log_error (struct dlm_ls*,char*,int,...) ;
 struct dlm_direntry* search_bucket (struct dlm_ls*,char*,int,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_dir_remove_entry(struct dlm_ls *ls, int nodeid, char *name, int namelen)
{
 struct dlm_direntry *de;
 uint32_t bucket;

 bucket = dir_hash(ls, name, namelen);

 spin_lock(&ls->ls_dirtbl[bucket].lock);

 de = search_bucket(ls, name, namelen, bucket);

 if (!de) {
  log_error(ls, "remove fr %u none", nodeid);
  goto out;
 }

 if (de->master_nodeid != nodeid) {
  log_error(ls, "remove fr %u ID %u", nodeid, de->master_nodeid);
  goto out;
 }

 list_del(&de->list);
 kfree(de);
 out:
 spin_unlock(&ls->ls_dirtbl[bucket].lock);
}
