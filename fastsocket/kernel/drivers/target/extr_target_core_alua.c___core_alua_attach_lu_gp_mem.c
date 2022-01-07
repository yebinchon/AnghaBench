
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp_member {int lu_gp_assoc; int lu_gp_mem_list; struct t10_alua_lu_gp* lu_gp; } ;
struct t10_alua_lu_gp {int lu_gp_lock; int lu_gp_members; int lu_gp_mem_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __core_alua_attach_lu_gp_mem(
 struct t10_alua_lu_gp_member *lu_gp_mem,
 struct t10_alua_lu_gp *lu_gp)
{
 spin_lock(&lu_gp->lu_gp_lock);
 lu_gp_mem->lu_gp = lu_gp;
 lu_gp_mem->lu_gp_assoc = 1;
 list_add_tail(&lu_gp_mem->lu_gp_mem_list, &lu_gp->lu_gp_mem_list);
 lu_gp->lu_gp_members++;
 spin_unlock(&lu_gp->lu_gp_lock);
}
