
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int GFP_KERNEL ;
 int set_1284_register (struct parport*,int ,unsigned char,int ) ;

__attribute__((used)) static void parport_uss720_write_data(struct parport *pp, unsigned char d)
{
 set_1284_register(pp, 0, d, GFP_KERNEL);
}
