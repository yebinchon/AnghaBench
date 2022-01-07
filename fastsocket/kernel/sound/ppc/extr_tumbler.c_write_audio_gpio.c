
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_gpio {int active_val; int inactive_val; int addr; } ;


 int DBG (char*,int ,int) ;
 int do_gpio_write (struct pmac_gpio*,int) ;

__attribute__((used)) static void write_audio_gpio(struct pmac_gpio *gp, int active)
{
 if (! gp->addr)
  return;
 active = active ? gp->active_val : gp->inactive_val;
 do_gpio_write(gp, active);
 DBG("(I) gpio %x write %d\n", gp->addr, active);
}
