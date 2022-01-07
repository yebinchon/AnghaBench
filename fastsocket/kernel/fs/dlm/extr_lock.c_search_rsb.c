
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int dummy; } ;
struct dlm_ls {TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int lock; } ;


 int _search_rsb (struct dlm_ls*,char*,int,int,unsigned int,struct dlm_rsb**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int search_rsb(struct dlm_ls *ls, char *name, int len, int b,
        unsigned int flags, struct dlm_rsb **r_ret)
{
 int error;
 spin_lock(&ls->ls_rsbtbl[b].lock);
 error = _search_rsb(ls, name, len, b, flags, r_ret);
 spin_unlock(&ls->ls_rsbtbl[b].lock);
 return error;
}
