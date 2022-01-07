
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int pullup_duration; } ;



void w1_next_pullup(struct w1_master *dev, int delay)
{
 dev->pullup_duration = delay;
}
