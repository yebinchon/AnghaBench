
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp_member {int tg_pt_gp_assoc; int tg_pt_gp_mem_list; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_lock; int tg_pt_gp_members; int tg_pt_gp_mem_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __core_alua_attach_tg_pt_gp_mem(
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem,
 struct t10_alua_tg_pt_gp *tg_pt_gp)
{
 spin_lock(&tg_pt_gp->tg_pt_gp_lock);
 tg_pt_gp_mem->tg_pt_gp = tg_pt_gp;
 tg_pt_gp_mem->tg_pt_gp_assoc = 1;
 list_add_tail(&tg_pt_gp_mem->tg_pt_gp_mem_list,
   &tg_pt_gp->tg_pt_gp_mem_list);
 tg_pt_gp->tg_pt_gp_members++;
 spin_unlock(&tg_pt_gp->tg_pt_gp_lock);
}
