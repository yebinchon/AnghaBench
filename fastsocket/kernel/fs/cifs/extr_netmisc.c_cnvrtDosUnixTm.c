
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int __le16 ;
struct TYPE_4__ {int Day; int Month; int Year; } ;
struct TYPE_3__ {int TwoSeconds; int Minutes; int Hours; } ;
typedef TYPE_1__ SMB_TIME ;
typedef TYPE_2__ SMB_DATE ;


 int cERROR (int,char*,int,...) ;
 int cFYI (int,char*,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__* total_days_of_prev_months ;

struct timespec cnvrtDosUnixTm(__le16 le_date, __le16 le_time, int offset)
{
 struct timespec ts;
 int sec, min, days, month, year;
 u16 date = le16_to_cpu(le_date);
 u16 time = le16_to_cpu(le_time);
 SMB_TIME *st = (SMB_TIME *)&time;
 SMB_DATE *sd = (SMB_DATE *)&date;

 cFYI(1, "date %d time %d", date, time);

 sec = 2 * st->TwoSeconds;
 min = st->Minutes;
 if ((sec > 59) || (min > 59))
  cERROR(1, "illegal time min %d sec %d", min, sec);
 sec += (min * 60);
 sec += 60 * 60 * st->Hours;
 if (st->Hours > 24)
  cERROR(1, "illegal hours %d", st->Hours);
 days = sd->Day;
 month = sd->Month;
 if ((days > 31) || (month > 12)) {
  cERROR(1, "illegal date, month %d day: %d", month, days);
  if (month > 12)
   month = 12;
 }
 month -= 1;
 days += total_days_of_prev_months[month];
 days += 3652;
 year = sd->Year;
 days += year * 365;
 days += (year/4);






 if (year >= 120)
  days = days - 1;


 if (year != 120)
  days -= ((year & 0x03) == 0) && (month < 2 ? 1 : 0);
 sec += 24 * 60 * 60 * days;

 ts.tv_sec = sec + offset;



 ts.tv_nsec = 0;
 return ts;
}
