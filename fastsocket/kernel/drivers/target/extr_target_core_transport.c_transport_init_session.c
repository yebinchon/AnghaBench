
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_kref; int sess_cmd_lock; int sess_wait_list; int sess_cmd_list; int sess_acl_list; int sess_list; } ;


 int ENOMEM ;
 struct se_session* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct se_session* kmem_cache_zalloc (int ,int ) ;
 int kref_init (int *) ;
 int pr_err (char*) ;
 int se_sess_cache ;
 int spin_lock_init (int *) ;

struct se_session *transport_init_session(void)
{
 struct se_session *se_sess;

 se_sess = kmem_cache_zalloc(se_sess_cache, GFP_KERNEL);
 if (!se_sess) {
  pr_err("Unable to allocate struct se_session from"
    " se_sess_cache\n");
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&se_sess->sess_list);
 INIT_LIST_HEAD(&se_sess->sess_acl_list);
 INIT_LIST_HEAD(&se_sess->sess_cmd_list);
 INIT_LIST_HEAD(&se_sess->sess_wait_list);
 spin_lock_init(&se_sess->sess_cmd_lock);
 kref_init(&se_sess->sess_kref);

 return se_sess;
}
