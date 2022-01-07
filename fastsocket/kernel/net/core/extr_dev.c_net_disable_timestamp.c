
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int netstamp_needed ;

void net_disable_timestamp(void)
{
 atomic_dec(&netstamp_needed);
}
