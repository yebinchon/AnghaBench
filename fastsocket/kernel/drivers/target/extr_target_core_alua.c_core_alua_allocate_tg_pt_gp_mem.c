
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp_member {struct se_port* tg_pt; int tg_pt_gp_mem_ref_cnt; int tg_pt_gp_mem_lock; int tg_pt_gp_mem_list; } ;
struct se_port {struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;


 int ENOMEM ;
 struct t10_alua_tg_pt_gp_member* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct t10_alua_tg_pt_gp_member* kmem_cache_zalloc (int ,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int t10_alua_tg_pt_gp_mem_cache ;

struct t10_alua_tg_pt_gp_member *core_alua_allocate_tg_pt_gp_mem(
 struct se_port *port)
{
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;

 tg_pt_gp_mem = kmem_cache_zalloc(t10_alua_tg_pt_gp_mem_cache,
    GFP_KERNEL);
 if (!tg_pt_gp_mem) {
  pr_err("Unable to allocate struct t10_alua_tg_pt_gp_member\n");
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&tg_pt_gp_mem->tg_pt_gp_mem_list);
 spin_lock_init(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
 atomic_set(&tg_pt_gp_mem->tg_pt_gp_mem_ref_cnt, 0);

 tg_pt_gp_mem->tg_pt = port;
 port->sep_alua_tg_pt_gp_mem = tg_pt_gp_mem;

 return tg_pt_gp_mem;
}
