
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ get_1284_register (struct parport*,int,unsigned char*,int ) ;

__attribute__((used)) static int clear_epp_timeout(struct parport *pp)
{
 unsigned char stat;

 if (get_1284_register(pp, 1, &stat, GFP_KERNEL))
  return 1;
 return stat & 1;
}
