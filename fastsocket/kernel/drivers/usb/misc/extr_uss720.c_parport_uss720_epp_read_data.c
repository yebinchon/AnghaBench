
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
 scalar_t__ get_1284_register (struct parport*,int,char*,int ) ;

__attribute__((used)) static size_t parport_uss720_epp_read_data(struct parport *pp, void *buf, size_t length, int flags)
{
 struct parport_uss720_private *priv = pp->private_data;
 size_t got = 0;

 if (change_mode(pp, ECR_EPP))
  return 0;
 for (; got < length; got++) {
  if (get_1284_register(pp, 4, (char *)buf, GFP_KERNEL))
   break;
  buf++;
  if (priv->reg[0] & 0x01) {
   clear_epp_timeout(pp);
   break;
  }
 }
 change_mode(pp, ECR_PS2);
 return got;
}
