
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_dev {TYPE_1__* bus; } ;
struct i2sbus_control {int macio; int list; } ;
struct TYPE_2__ {int chip; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct i2sbus_control* kzalloc (int,int ) ;

int i2sbus_control_init(struct macio_dev* dev, struct i2sbus_control **c)
{
 *c = kzalloc(sizeof(struct i2sbus_control), GFP_KERNEL);
 if (!*c)
  return -ENOMEM;

 INIT_LIST_HEAD(&(*c)->list);

 (*c)->macio = dev->bus->chip;
 return 0;
}
