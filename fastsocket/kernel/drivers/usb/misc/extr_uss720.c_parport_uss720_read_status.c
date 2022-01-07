
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ get_1284_register (struct parport*,int,unsigned char*,int ) ;

__attribute__((used)) static unsigned char parport_uss720_read_status(struct parport *pp)
{
 unsigned char ret;

 if (get_1284_register(pp, 1, &ret, GFP_KERNEL))
  return 0;
 return ret & 0xf8;
}
