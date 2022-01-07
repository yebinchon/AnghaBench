
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int cs2000_registers_init (struct oxygen*) ;
 int xonar_stx_resume (struct oxygen*) ;

__attribute__((used)) static void xonar_st_resume(struct oxygen *chip)
{
 cs2000_registers_init(chip);
 xonar_stx_resume(chip);
}
