
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport_uss720_private {int* reg; } ;
struct parport {TYPE_2__* physport; struct parport_uss720_private* private_data; } ;
typedef int __u8 ;
struct TYPE_4__ {TYPE_1__* cad; } ;
struct TYPE_3__ {unsigned long timeout; } ;


 int EBUSY ;


 int ECR_PS2 ;
 int EIO ;
 int GFP_KERNEL ;
 int current ;
 scalar_t__ get_1284_register (struct parport*,int,int *,int ) ;
 unsigned long jiffies ;
 int msleep_interruptible (int) ;
 scalar_t__ set_1284_register (struct parport*,int,int,int ) ;
 int signal_pending (int ) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int change_mode(struct parport *pp, int m)
{
 struct parport_uss720_private *priv = pp->private_data;
 int mode;
 __u8 reg;

 if (get_1284_register(pp, 6, &reg, GFP_KERNEL))
  return -EIO;

 mode = (priv->reg[2] >> 5) & 0x7;
 if (mode == m)
  return 0;

 if (mode > ECR_PS2 && m > ECR_PS2)
  if (change_mode(pp, ECR_PS2))
   return -EIO;

 if (m <= ECR_PS2 && !(priv->reg[1] & 0x20)) {


  unsigned long expire = jiffies + pp->physport->cad->timeout;
  switch (mode) {
  case 128:
  case 129:

   for (;;) {
    if (get_1284_register(pp, 6, &reg, GFP_KERNEL))
     return -EIO;
    if (priv->reg[2] & 0x01)
     break;
    if (time_after_eq (jiffies, expire))

     return -EBUSY;
    msleep_interruptible(10);
    if (signal_pending (current))
     break;
   }
  }
 }

 if (set_1284_register(pp, 6, m << 5, GFP_KERNEL))
  return -EIO;
 if (get_1284_register(pp, 6, &reg, GFP_KERNEL))
  return -EIO;
 return 0;
}
