
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int ktime_get_real () ;
 int ktime_to_ms (int ) ;

__attribute__((used)) static inline u32 bictcp_clock(void)
{

 return ktime_to_ms(ktime_get_real());



}
