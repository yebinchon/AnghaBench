
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_lu_gp_member {int lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct t10_alua_lu_gp {int lu_gp_id; TYPE_1__ lu_gp_group; } ;
struct se_device {struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; } ;
typedef int ssize_t ;


 char* config_item_name (struct config_item*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,char*,int ) ;

__attribute__((used)) static ssize_t target_core_show_alua_lu_gp(void *p, char *page)
{
 struct se_device *dev = p;
 struct config_item *lu_ci;
 struct t10_alua_lu_gp *lu_gp;
 struct t10_alua_lu_gp_member *lu_gp_mem;
 ssize_t len = 0;

 lu_gp_mem = dev->dev_alua_lu_gp_mem;
 if (!lu_gp_mem)
  return 0;

 spin_lock(&lu_gp_mem->lu_gp_mem_lock);
 lu_gp = lu_gp_mem->lu_gp;
 if (lu_gp) {
  lu_ci = &lu_gp->lu_gp_group.cg_item;
  len += sprintf(page, "LU Group Alias: %s\nLU Group ID: %hu\n",
   config_item_name(lu_ci), lu_gp->lu_gp_id);
 }
 spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

 return len;
}
