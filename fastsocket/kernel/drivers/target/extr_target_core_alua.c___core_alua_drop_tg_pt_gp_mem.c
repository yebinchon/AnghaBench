
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp_member {scalar_t__ tg_pt_gp_assoc; int * tg_pt_gp; int tg_pt_gp_mem_list; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_lock; int tg_pt_gp_members; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __core_alua_drop_tg_pt_gp_mem(
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem,
 struct t10_alua_tg_pt_gp *tg_pt_gp)
{
 spin_lock(&tg_pt_gp->tg_pt_gp_lock);
 list_del(&tg_pt_gp_mem->tg_pt_gp_mem_list);
 tg_pt_gp_mem->tg_pt_gp = ((void*)0);
 tg_pt_gp_mem->tg_pt_gp_assoc = 0;
 tg_pt_gp->tg_pt_gp_members--;
 spin_unlock(&tg_pt_gp->tg_pt_gp_lock);
}
