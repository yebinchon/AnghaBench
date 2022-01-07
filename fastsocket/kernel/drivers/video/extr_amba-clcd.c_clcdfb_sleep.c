
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_atomic () ;
 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static inline void clcdfb_sleep(unsigned int ms)
{
 if (in_atomic()) {
  mdelay(ms);
 } else {
  msleep(ms);
 }
}
