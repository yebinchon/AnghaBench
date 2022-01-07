
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int retrans_to_secs(u8 retrans, int timeout, int rto_max)
{
 int period = 0;

 if (retrans > 0) {
  period = timeout;
  while (--retrans) {
   timeout <<= 1;
   if (timeout > rto_max)
    timeout = rto_max;
   period += timeout;
  }
 }
 return period;
}
