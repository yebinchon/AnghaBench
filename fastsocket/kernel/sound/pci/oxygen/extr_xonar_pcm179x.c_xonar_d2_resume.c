
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int pcm1796_registers_init (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_d2_resume(struct oxygen *chip)
{
 pcm1796_registers_init(chip);
 xonar_enable_output(chip);
}
