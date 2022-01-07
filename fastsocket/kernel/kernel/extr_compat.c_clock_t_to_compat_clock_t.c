
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compat_clock_t ;
typedef int clock_t ;


 int clock_t_to_jiffies (int ) ;
 int compat_jiffies_to_clock_t (int ) ;

__attribute__((used)) static compat_clock_t clock_t_to_compat_clock_t(clock_t x)
{
 return compat_jiffies_to_clock_t(clock_t_to_jiffies(x));
}
