
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int cs4245_registers_init (struct oxygen*) ;
 int dg_output_enable (struct oxygen*) ;

__attribute__((used)) static void dg_resume(struct oxygen *chip)
{
 cs4245_registers_init(chip);
 dg_output_enable(chip);
}
