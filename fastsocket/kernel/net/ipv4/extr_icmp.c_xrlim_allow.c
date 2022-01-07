
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {unsigned long rate_tokens; unsigned long rate_last; } ;


 int XRLIM_BURST_FACTOR ;
 unsigned long jiffies ;

int xrlim_allow(struct dst_entry *dst, int timeout)
{
 unsigned long now, token = dst->rate_tokens;
 int rc = 0;

 now = jiffies;
 token += now - dst->rate_last;
 dst->rate_last = now;
 if (token > XRLIM_BURST_FACTOR * timeout)
  token = XRLIM_BURST_FACTOR * timeout;
 if (token >= timeout) {
  token -= timeout;
  rc = 1;
 }
 dst->rate_tokens = token;
 return rc;
}
