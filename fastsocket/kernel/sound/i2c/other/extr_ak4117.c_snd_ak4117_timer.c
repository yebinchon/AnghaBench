
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ak4117 {TYPE_1__ timer; scalar_t__ init; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int snd_ak4117_check_rate_and_errors (struct ak4117*,int ) ;

__attribute__((used)) static void snd_ak4117_timer(unsigned long data)
{
 struct ak4117 *chip = (struct ak4117 *)data;

 if (chip->init)
  return;
 snd_ak4117_check_rate_and_errors(chip, 0);
 chip->timer.expires = 1 + jiffies;
 add_timer(&chip->timer);
}
