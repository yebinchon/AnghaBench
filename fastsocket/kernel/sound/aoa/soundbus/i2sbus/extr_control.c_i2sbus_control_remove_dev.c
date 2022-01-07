
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2sbus_dev {int item; } ;
struct i2sbus_control {int list; } ;


 int i2sbus_control_destroy (struct i2sbus_control*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;

void i2sbus_control_remove_dev(struct i2sbus_control *c,
          struct i2sbus_dev *i2sdev)
{

 list_del(&i2sdev->item);
 if (list_empty(&c->list))
  i2sbus_control_destroy(c);
}
