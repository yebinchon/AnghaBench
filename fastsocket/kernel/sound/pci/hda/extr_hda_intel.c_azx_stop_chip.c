
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {scalar_t__ initialized; } ;


 int DPLBASE ;
 int DPUBASE ;
 int azx_free_cmd_io (struct azx*) ;
 int azx_int_clear (struct azx*) ;
 int azx_int_disable (struct azx*) ;
 int azx_writel (struct azx*,int ,int ) ;

__attribute__((used)) static void azx_stop_chip(struct azx *chip)
{
 if (!chip->initialized)
  return;


 azx_int_disable(chip);
 azx_int_clear(chip);


 azx_free_cmd_io(chip);


 azx_writel(chip, DPLBASE, 0);
 azx_writel(chip, DPUBASE, 0);

 chip->initialized = 0;
}
