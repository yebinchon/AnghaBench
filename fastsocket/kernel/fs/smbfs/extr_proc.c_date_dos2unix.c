
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct smb_sb_info {int dummy; } ;
typedef int __u16 ;


 int* day_n ;
 int local2utc (struct smb_sb_info*,int) ;

__attribute__((used)) static time_t
date_dos2unix(struct smb_sb_info *server, __u16 date, __u16 time)
{
 int month, year;
 time_t secs;



 month = ((date >> 5) - 1) & 15;
 year = date >> 9;
 secs = (time & 31) * 2 + 60 * ((time >> 5) & 63) + (time >> 11) * 3600 + 86400 *
     ((date & 31) - 1 + day_n[month] + (year / 4) + year * 365 - ((year & 3) == 0 &&
         month < 2 ? 1 : 0) + 3653);

 return local2utc(server, secs);
}
