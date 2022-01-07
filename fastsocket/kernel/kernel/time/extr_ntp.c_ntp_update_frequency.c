
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HZ ;
 int NSEC_PER_USEC ;
 int NTP_INTERVAL_FREQ ;
 int NTP_SCALE_SHIFT ;
 int USER_HZ ;
 int div_u64 (int,int ) ;
 scalar_t__ ntp_tick_adj ;
 int tick_length ;
 int tick_length_base ;
 int tick_nsec ;
 int tick_usec ;
 scalar_t__ time_freq ;

__attribute__((used)) static void ntp_update_frequency(void)
{
 u64 second_length;
 u64 new_base;

 second_length = (u64)(tick_usec * NSEC_PER_USEC * USER_HZ)
      << NTP_SCALE_SHIFT;

 second_length += ntp_tick_adj;
 second_length += time_freq;

 tick_nsec = div_u64(second_length, HZ) >> NTP_SCALE_SHIFT;
 new_base = div_u64(second_length, NTP_INTERVAL_FREQ);





 tick_length += new_base - tick_length_base;
 tick_length_base = new_base;
}
