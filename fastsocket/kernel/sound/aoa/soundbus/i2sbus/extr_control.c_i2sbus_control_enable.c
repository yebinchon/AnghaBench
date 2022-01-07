
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_args {int count; } ;
struct macio_chip {int * base; } ;
struct i2sbus_dev {int bus_number; scalar_t__ enable; } ;
struct i2sbus_control {struct macio_chip* macio; } ;


 int ENODEV ;
 int KEYLARGO_FCR1 ;
 int KL1_I2S0_ENABLE ;
 int KL1_I2S1_ENABLE ;
 int MACIO_BIS (int ,int ) ;
 int pmf_call_one (scalar_t__,struct pmf_args*) ;

int i2sbus_control_enable(struct i2sbus_control *c,
     struct i2sbus_dev *i2sdev)
{
 struct pmf_args args = { .count = 0 };
 struct macio_chip *macio = c->macio;

 if (i2sdev->enable)
  return pmf_call_one(i2sdev->enable, &args);

 if (macio == ((void*)0) || macio->base == ((void*)0))
  return -ENODEV;

 switch (i2sdev->bus_number) {
 case 0:


  MACIO_BIS(KEYLARGO_FCR1, KL1_I2S0_ENABLE);
  break;
 case 1:
  MACIO_BIS(KEYLARGO_FCR1, KL1_I2S1_ENABLE);
  break;
 default:
  return -ENODEV;
 }
 return 0;
}
