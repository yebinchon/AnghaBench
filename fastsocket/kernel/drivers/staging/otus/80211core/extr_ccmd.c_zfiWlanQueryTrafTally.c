
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsTrafTally {int dummy; } ;
struct TYPE_2__ {int trafTally; } ;


 TYPE_1__* wd ;
 int zfMemoryCopy (int *,int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanQueryTrafTally(zdev_t *dev, struct zsTrafTally *tally)
{
 zmw_get_wlan_dev(dev);

 zmw_declare_for_critical_section();

 zmw_enter_critical_section(dev);
 zfMemoryCopy((u8_t *)tally, (u8_t *)&wd->trafTally,
      sizeof(struct zsTrafTally));
 zmw_leave_critical_section(dev);
}
