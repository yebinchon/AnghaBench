
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zfBssInfoRefresh (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanFlushBssList(zdev_t* dev)
{
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    zfBssInfoRefresh(dev, 1);
    zmw_leave_critical_section(dev);
}
