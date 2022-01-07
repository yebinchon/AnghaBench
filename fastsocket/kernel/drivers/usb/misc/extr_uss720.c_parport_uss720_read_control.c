
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_uss720_private {int* reg; } ;
struct parport {struct parport_uss720_private* private_data; } ;



__attribute__((used)) static unsigned char parport_uss720_read_control(struct parport *pp)
{
 struct parport_uss720_private *priv = pp->private_data;
 return priv->reg[1] & 0xf;
}
