
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timestamp {long hour; long minute; long second; long month; long day; int centiseconds; int hundredsOfMicroseconds; int microseconds; void* year; void* typeAndTimezone; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int int16_t ;
struct TYPE_2__ {int tz_minuteswest; } ;


 scalar_t__ LEAPS_THRU_END_OF (long) ;
 long SECS_PER_DAY ;
 long SECS_PER_HOUR ;
 size_t __isleap (long) ;
 unsigned short** __mon_yday ;
 void* cpu_to_le16 (long) ;
 TYPE_1__ sys_tz ;

struct timestamp *
udf_time_to_disk_stamp(struct timestamp *dest, struct timespec ts)
{
 long int days, rem, y;
 const unsigned short int *ip;
 int16_t offset;

 offset = -sys_tz.tz_minuteswest;

 if (!dest)
  return ((void*)0);

 dest->typeAndTimezone = cpu_to_le16(0x1000 | (offset & 0x0FFF));

 ts.tv_sec += offset * 60;
 days = ts.tv_sec / SECS_PER_DAY;
 rem = ts.tv_sec % SECS_PER_DAY;
 dest->hour = rem / SECS_PER_HOUR;
 rem %= SECS_PER_HOUR;
 dest->minute = rem / 60;
 dest->second = rem % 60;
 y = 1970;




 while (days < 0 || days >= (__isleap(y) ? 366 : 365)) {
  long int yg = y + days / 365 - (days % 365 < 0);


  days -= ((yg - y) * 365
    + (((yg - 1) / (4) - ((yg - 1) % (4) < 0)) - ((yg - 1) / (100) - ((yg - 1) % (100) < 0)) + ((yg - 1) / (400) - ((yg - 1) % (400) < 0)))
    - (((y - 1) / (4) - ((y - 1) % (4) < 0)) - ((y - 1) / (100) - ((y - 1) % (100) < 0)) + ((y - 1) / (400) - ((y - 1) % (400) < 0))));
  y = yg;
 }
 dest->year = cpu_to_le16(y);
 ip = __mon_yday[__isleap(y)];
 for (y = 11; days < (long int)ip[y]; --y)
  continue;
 days -= ip[y];
 dest->month = y + 1;
 dest->day = days + 1;

 dest->centiseconds = ts.tv_nsec / 10000000;
 dest->hundredsOfMicroseconds = (ts.tv_nsec / 1000 -
     dest->centiseconds * 10000) / 100;
 dest->microseconds = (ts.tv_nsec / 1000 - dest->centiseconds * 10000 -
         dest->hundredsOfMicroseconds * 100);
 return dest;
}
