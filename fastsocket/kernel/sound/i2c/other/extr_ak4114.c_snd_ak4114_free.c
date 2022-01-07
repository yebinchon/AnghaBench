
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {int init; int work; } ;


 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int kfree (struct ak4114*) ;
 int mb () ;

__attribute__((used)) static void snd_ak4114_free(struct ak4114 *chip)
{
 chip->init = 1;
 mb();
 cancel_delayed_work(&chip->work);
 flush_scheduled_work();
 kfree(chip);
}
