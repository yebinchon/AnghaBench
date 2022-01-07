
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 secs_to_retrans(int seconds, int timeout, int rto_max)
{
 u8 res = 0;

 if (seconds > 0) {
  int period = timeout;

  res = 1;
  while (seconds > period && res < 255) {
   res++;
   timeout <<= 1;
   if (timeout > rto_max)
    timeout = rto_max;
   period += timeout;
  }
 }
 return res;
}
