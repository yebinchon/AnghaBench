
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int netstamp_needed ;

void net_enable_timestamp(void)
{
 atomic_inc(&netstamp_needed);
}
