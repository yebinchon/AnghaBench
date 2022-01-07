
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int __clocksource_change_rating (struct clocksource*,int) ;
 int clocksource_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clocksource_change_rating(struct clocksource *cs, int rating)
{
 mutex_lock(&clocksource_mutex);
 __clocksource_change_rating(cs, rating);
 mutex_unlock(&clocksource_mutex);
}
