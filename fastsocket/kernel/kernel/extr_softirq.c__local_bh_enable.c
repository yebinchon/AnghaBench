
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOFTIRQ_DISABLE_OFFSET ;
 int __local_bh_enable (int ) ;

void _local_bh_enable(void)
{
 __local_bh_enable(SOFTIRQ_DISABLE_OFFSET);
}
