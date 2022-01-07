
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_gpio {int active_val; int addr; } ;


 int do_gpio_read (struct pmac_gpio*) ;

__attribute__((used)) static int check_audio_gpio(struct pmac_gpio *gp)
{
 int ret;

 if (! gp->addr)
  return 0;

 ret = do_gpio_read(gp);

 return (ret & 0x1) == (gp->active_val & 0x1);
}
