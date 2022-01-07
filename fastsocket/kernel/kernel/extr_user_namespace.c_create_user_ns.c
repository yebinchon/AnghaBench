
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int dummy; } ;
struct user_namespace {int kref; struct user_struct* creator; scalar_t__ uidhash_table; } ;
struct cred {int * request_key_auth; int group_info; scalar_t__ fsgid; scalar_t__ sgid; scalar_t__ egid; scalar_t__ gid; scalar_t__ fsuid; scalar_t__ suid; scalar_t__ euid; scalar_t__ uid; struct user_struct* user; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (scalar_t__) ;
 int UIDHASH_SZ ;
 struct user_struct* alloc_uid (struct user_namespace*,int ) ;
 int get_group_info (int *) ;
 int init_groups ;
 int key_put (int *) ;
 int kfree (struct user_namespace*) ;
 struct user_namespace* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int kref_set (int *,int) ;
 int put_group_info (int ) ;

int create_user_ns(struct cred *new)
{
 struct user_namespace *ns;
 struct user_struct *root_user;
 int n;

 ns = kmalloc(sizeof(struct user_namespace), GFP_KERNEL);
 if (!ns)
  return -ENOMEM;

 kref_init(&ns->kref);

 for (n = 0; n < UIDHASH_SZ; ++n)
  INIT_HLIST_HEAD(ns->uidhash_table + n);


 root_user = alloc_uid(ns, 0);
 if (!root_user) {
  kfree(ns);
  return -ENOMEM;
 }


 ns->creator = new->user;
 new->user = root_user;
 new->uid = new->euid = new->suid = new->fsuid = 0;
 new->gid = new->egid = new->sgid = new->fsgid = 0;
 put_group_info(new->group_info);
 new->group_info = get_group_info(&init_groups);







 kref_set(&ns->kref, 1);

 return 0;
}
