
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_recover_list; struct dlm_ls* res_ls; } ;
struct dlm_ls {int ls_recover_list_lock; int ls_recover_list_count; } ;


 int dlm_put_rsb (struct dlm_rsb*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void recover_list_del(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;

 spin_lock(&ls->ls_recover_list_lock);
 list_del_init(&r->res_recover_list);
 ls->ls_recover_list_count--;
 spin_unlock(&ls->ls_recover_list_lock);

 dlm_put_rsb(r);
}
