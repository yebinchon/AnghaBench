
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uwb_dev_for_each_f ;
struct TYPE_2__ {int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;


 int device_for_each_child (int *,void*,int ) ;

int uwb_dev_for_each(struct uwb_rc *rc, uwb_dev_for_each_f function, void *priv)
{
 return device_for_each_child(&rc->uwb_dev.dev, priv, function);
}
