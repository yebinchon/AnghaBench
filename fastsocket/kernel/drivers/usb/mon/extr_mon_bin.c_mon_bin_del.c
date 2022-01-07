
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mon_bus {TYPE_1__* classdev; } ;
struct TYPE_2__ {int devt; } ;


 int device_destroy (int ,int ) ;
 int mon_bin_class ;

void mon_bin_del(struct mon_bus *mbus)
{
 device_destroy(mon_bin_class, mbus->classdev->devt);
}
