
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sm501fb_info {int regs_res; int regs; int fbmem_res; int fbmem; TYPE_1__* dev; } ;
struct TYPE_2__ {int parent; } ;


 int SM501_GATE_DISPLAY ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int release_resource (int ) ;
 int sm501_unit_power (int ,int ,int ) ;

__attribute__((used)) static void sm501fb_stop(struct sm501fb_info *info)
{

 sm501_unit_power(info->dev->parent, SM501_GATE_DISPLAY, 0);

 iounmap(info->fbmem);
 release_resource(info->fbmem_res);
 kfree(info->fbmem_res);

 iounmap(info->regs);
 release_resource(info->regs_res);
 kfree(info->regs_res);
}
