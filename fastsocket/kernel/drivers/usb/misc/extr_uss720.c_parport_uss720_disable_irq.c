
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_uss720_private {int* reg; } ;
struct parport {struct parport_uss720_private* private_data; } ;


 int GFP_KERNEL ;
 scalar_t__ set_1284_register (struct parport*,int,unsigned char,int ) ;

__attribute__((used)) static void parport_uss720_disable_irq(struct parport *pp)
{
 struct parport_uss720_private *priv = pp->private_data;
 unsigned char d;

 d = priv->reg[1] & ~0x10;
 if (set_1284_register(pp, 2, d, GFP_KERNEL))
  return;
 priv->reg[1] = d;
}
