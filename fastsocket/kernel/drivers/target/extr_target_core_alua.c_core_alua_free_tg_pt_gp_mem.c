
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp_member {int tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; scalar_t__ tg_pt_gp_assoc; int tg_pt_gp_mem_list; int tg_pt_gp_mem_ref_cnt; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_lock; int tg_pt_gp_members; } ;
struct se_port {struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;


 scalar_t__ atomic_read (int *) ;
 int cpu_relax () ;
 int kmem_cache_free (int ,struct t10_alua_tg_pt_gp_member*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t10_alua_tg_pt_gp_mem_cache ;

void core_alua_free_tg_pt_gp_mem(struct se_port *port)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;

 tg_pt_gp_mem = port->sep_alua_tg_pt_gp_mem;
 if (!tg_pt_gp_mem)
  return;

 while (atomic_read(&tg_pt_gp_mem->tg_pt_gp_mem_ref_cnt))
  cpu_relax();

 spin_lock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
 tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
 if (tg_pt_gp) {
  spin_lock(&tg_pt_gp->tg_pt_gp_lock);
  if (tg_pt_gp_mem->tg_pt_gp_assoc) {
   list_del(&tg_pt_gp_mem->tg_pt_gp_mem_list);
   tg_pt_gp->tg_pt_gp_members--;
   tg_pt_gp_mem->tg_pt_gp_assoc = 0;
  }
  spin_unlock(&tg_pt_gp->tg_pt_gp_lock);
  tg_pt_gp_mem->tg_pt_gp = ((void*)0);
 }
 spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);

 kmem_cache_free(t10_alua_tg_pt_gp_mem_cache, tg_pt_gp_mem);
}
