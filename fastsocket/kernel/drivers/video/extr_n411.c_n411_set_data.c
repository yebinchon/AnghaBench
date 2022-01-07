
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hecubafb_par {int dummy; } ;


 int dio_addr ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void n411_set_data(struct hecubafb_par *par, unsigned char value)
{
 outb(value, dio_addr);
}
