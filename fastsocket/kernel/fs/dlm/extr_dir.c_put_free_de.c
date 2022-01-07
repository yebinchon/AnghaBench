
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recover_list_lock; int ls_recover_list; } ;
struct dlm_direntry {int list; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_free_de(struct dlm_ls *ls, struct dlm_direntry *de)
{
 spin_lock(&ls->ls_recover_list_lock);
 list_add(&de->list, &ls->ls_recover_list);
 spin_unlock(&ls->ls_recover_list_lock);
}
