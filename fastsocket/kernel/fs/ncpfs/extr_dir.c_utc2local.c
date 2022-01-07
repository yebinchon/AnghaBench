
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tz_minuteswest; } ;


 TYPE_1__ sys_tz ;

__attribute__((used)) static int utc2local(int time)
{
 return time - sys_tz.tz_minuteswest * 60;
}
