
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ktime_get_real () ;
 int ktime_to_ns (int ) ;

__attribute__((used)) static u32 seq_scale(u32 seq)
{
 return seq + (ktime_to_ns(ktime_get_real()) >> 6);
}
