
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480u_tx_inflight {unsigned long max; unsigned long threshold; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static
ssize_t wlp_tx_inflight_store(struct i1480u_tx_inflight *inflight,
    const char *buf, size_t size)
{
 unsigned long in_threshold, in_max;
 ssize_t result;
 result = sscanf(buf, "%lu %lu", &in_threshold, &in_max);
 if (result != 2)
  return -EINVAL;
 if (in_max <= in_threshold)
  return -EINVAL;
 inflight->max = in_max;
 inflight->threshold = in_threshold;
 return size;
}
