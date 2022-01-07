
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_length; int res_recover_list; int res_root_list; int res_waitqueue; int res_convertqueue; int res_grantqueue; int res_lookup; int res_mutex; int res_name; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct dlm_rsb* dlm_allocate_rsb (struct dlm_ls*,int) ;
 int memcpy (int ,char*,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct dlm_rsb *create_rsb(struct dlm_ls *ls, char *name, int len)
{
 struct dlm_rsb *r;

 r = dlm_allocate_rsb(ls, len);
 if (!r)
  return ((void*)0);

 r->res_ls = ls;
 r->res_length = len;
 memcpy(r->res_name, name, len);
 mutex_init(&r->res_mutex);

 INIT_LIST_HEAD(&r->res_lookup);
 INIT_LIST_HEAD(&r->res_grantqueue);
 INIT_LIST_HEAD(&r->res_convertqueue);
 INIT_LIST_HEAD(&r->res_waitqueue);
 INIT_LIST_HEAD(&r->res_root_list);
 INIT_LIST_HEAD(&r->res_recover_list);

 return r;
}
