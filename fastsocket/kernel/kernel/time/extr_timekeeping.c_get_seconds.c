
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long tv_sec; } ;
struct TYPE_4__ {TYPE_1__ xtime; } ;


 TYPE_2__ timekeeper ;

unsigned long get_seconds(void)
{
 return timekeeper.xtime.tv_sec;
}
