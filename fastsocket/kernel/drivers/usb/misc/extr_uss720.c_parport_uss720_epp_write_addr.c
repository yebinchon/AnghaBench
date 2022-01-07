
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_uss720_private {int* reg; } ;
struct parport {struct parport_uss720_private* private_data; } ;


 int ECR_EPP ;
 int ECR_PS2 ;
 int GFP_KERNEL ;
 scalar_t__ change_mode (struct parport*,int ) ;
 int clear_epp_timeout (struct parport*) ;
 scalar_t__ get_1284_register (struct parport*,int,int *,int ) ;
 scalar_t__ set_1284_register (struct parport*,int,char,int ) ;

__attribute__((used)) static size_t parport_uss720_epp_write_addr(struct parport *pp, const void *buf, size_t length, int flags)
{
 struct parport_uss720_private *priv = pp->private_data;
 size_t written = 0;

 if (change_mode(pp, ECR_EPP))
  return 0;
 for (; written < length; written++) {
  if (set_1284_register(pp, 3, *(char *)buf, GFP_KERNEL))
   break;
  buf++;
  if (get_1284_register(pp, 1, ((void*)0), GFP_KERNEL))
   break;
  if (priv->reg[0] & 0x01) {
   clear_epp_timeout(pp);
   break;
  }
 }
 change_mode(pp, ECR_PS2);
 return written;
}
