
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp {int lu_gp_valid_id; scalar_t__ lu_gp_id; int lu_gp_ref_cnt; int lu_gp_lock; int lu_gp_mem_list; int lu_gp_node; } ;


 int ENOMEM ;
 struct t10_alua_lu_gp* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int alua_lu_gps_count ;
 int alua_lu_gps_counter ;
 int atomic_set (int *,int ) ;
 struct t10_alua_lu_gp* kmem_cache_zalloc (int ,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int t10_alua_lu_gp_cache ;

struct t10_alua_lu_gp *
core_alua_allocate_lu_gp(const char *name, int def_group)
{
 struct t10_alua_lu_gp *lu_gp;

 lu_gp = kmem_cache_zalloc(t10_alua_lu_gp_cache, GFP_KERNEL);
 if (!lu_gp) {
  pr_err("Unable to allocate struct t10_alua_lu_gp\n");
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&lu_gp->lu_gp_node);
 INIT_LIST_HEAD(&lu_gp->lu_gp_mem_list);
 spin_lock_init(&lu_gp->lu_gp_lock);
 atomic_set(&lu_gp->lu_gp_ref_cnt, 0);

 if (def_group) {
  lu_gp->lu_gp_id = alua_lu_gps_counter++;
  lu_gp->lu_gp_valid_id = 1;
  alua_lu_gps_count++;
 }

 return lu_gp;
}
