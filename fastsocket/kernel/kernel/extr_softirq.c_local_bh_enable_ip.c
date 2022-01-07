
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _local_bh_enable_ip (unsigned long) ;

void local_bh_enable_ip(unsigned long ip)
{
 _local_bh_enable_ip(ip);
}
