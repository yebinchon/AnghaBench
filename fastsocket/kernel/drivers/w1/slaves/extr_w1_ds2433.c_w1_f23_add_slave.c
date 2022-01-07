
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_slave {TYPE_1__ dev; struct w1_f23_data* family_data; } ;
struct w1_f23_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct w1_f23_data*) ;
 struct w1_f23_data* kzalloc (int,int ) ;
 int sysfs_create_bin_file (int *,int *) ;
 int w1_f23_bin_attr ;

__attribute__((used)) static int w1_f23_add_slave(struct w1_slave *sl)
{
 int err;
 err = sysfs_create_bin_file(&sl->dev.kobj, &w1_f23_bin_attr);






 return err;
}
