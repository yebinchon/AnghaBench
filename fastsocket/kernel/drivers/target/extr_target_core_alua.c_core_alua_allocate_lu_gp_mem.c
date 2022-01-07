
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp_member {struct se_device* lu_gp_mem_dev; int lu_gp_mem_ref_cnt; int lu_gp_mem_lock; int lu_gp_mem_list; } ;
struct se_device {struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; } ;


 int ENOMEM ;
 struct t10_alua_lu_gp_member* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct t10_alua_lu_gp_member* kmem_cache_zalloc (int ,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int t10_alua_lu_gp_mem_cache ;

__attribute__((used)) static struct t10_alua_lu_gp_member *
core_alua_allocate_lu_gp_mem(struct se_device *dev)
{
 struct t10_alua_lu_gp_member *lu_gp_mem;

 lu_gp_mem = kmem_cache_zalloc(t10_alua_lu_gp_mem_cache, GFP_KERNEL);
 if (!lu_gp_mem) {
  pr_err("Unable to allocate struct t10_alua_lu_gp_member\n");
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&lu_gp_mem->lu_gp_mem_list);
 spin_lock_init(&lu_gp_mem->lu_gp_mem_lock);
 atomic_set(&lu_gp_mem->lu_gp_mem_ref_cnt, 0);

 lu_gp_mem->lu_gp_mem_dev = dev;
 dev->dev_alua_lu_gp_mem = lu_gp_mem;

 return lu_gp_mem;
}
