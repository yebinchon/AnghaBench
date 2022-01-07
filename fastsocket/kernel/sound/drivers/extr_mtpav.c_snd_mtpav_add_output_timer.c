
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct mtpav {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void snd_mtpav_add_output_timer(struct mtpav *chip)
{
 chip->timer.expires = 1 + jiffies;
 add_timer(&chip->timer);
}
