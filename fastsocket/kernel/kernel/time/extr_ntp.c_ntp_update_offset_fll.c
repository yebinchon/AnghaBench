
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 long MAXSEC ;
 long MINSEC ;
 int NTP_SCALE_SHIFT ;
 int SHIFT_FLL ;
 int STA_FLL ;
 int STA_MODE ;
 int div_s64 (int,long) ;
 int time_status ;

__attribute__((used)) static inline s64 ntp_update_offset_fll(s64 offset64, long secs)
{
 time_status &= ~STA_MODE;

 if (secs < MINSEC)
  return 0;

 if (!(time_status & STA_FLL) && (secs <= MAXSEC))
  return 0;

 time_status |= STA_MODE;

 return div_s64(offset64 << (NTP_SCALE_SHIFT - SHIFT_FLL), secs);
}
