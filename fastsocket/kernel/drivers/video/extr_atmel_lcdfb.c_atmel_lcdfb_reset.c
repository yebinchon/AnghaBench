
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_lcdfb_info {int dummy; } ;


 int atmel_lcdfb_start (struct atmel_lcdfb_info*) ;
 int atmel_lcdfb_stop (struct atmel_lcdfb_info*) ;
 int might_sleep () ;

__attribute__((used)) static void atmel_lcdfb_reset(struct atmel_lcdfb_info *sinfo)
{
 might_sleep();

 atmel_lcdfb_stop(sinfo);
 atmel_lcdfb_start(sinfo);
}
