
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int time_t ;
struct affs_date {void* ticks; void* mins; void* days; } ;
struct TYPE_2__ {int tz_minuteswest; } ;


 void* cpu_to_be32 (int) ;
 TYPE_1__ sys_tz ;

void
secs_to_datestamp(time_t secs, struct affs_date *ds)
{
 u32 days;
 u32 minute;

 secs -= sys_tz.tz_minuteswest * 60 + ((8 * 365 + 2) * 24 * 60 * 60);
 if (secs < 0)
  secs = 0;
 days = secs / 86400;
 secs -= days * 86400;
 minute = secs / 60;
 secs -= minute * 60;

 ds->days = cpu_to_be32(days);
 ds->mins = cpu_to_be32(minute);
 ds->ticks = cpu_to_be32(secs * 50);
}
