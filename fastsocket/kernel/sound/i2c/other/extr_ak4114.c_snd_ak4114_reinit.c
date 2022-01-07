
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {int init; int work; scalar_t__* kctls; } ;


 int HZ ;
 int ak4114_init_regs (struct ak4114*) ;
 int flush_scheduled_work () ;
 int mb () ;
 int schedule_delayed_work (int *,int) ;

void snd_ak4114_reinit(struct ak4114 *chip)
{
 chip->init = 1;
 mb();
 flush_scheduled_work();
 ak4114_init_regs(chip);

 chip->init = 0;
 if (chip->kctls[0])
  schedule_delayed_work(&chip->work, HZ / 10);
}
