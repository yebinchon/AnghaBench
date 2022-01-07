
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int f_kobj_unregister; } ;


 int complete (int *) ;
 TYPE_1__* ext4_feat ;

__attribute__((used)) static void ext4_feat_release(struct kobject *kobj)
{
 complete(&ext4_feat->f_kobj_unregister);
}
