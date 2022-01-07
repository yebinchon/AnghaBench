
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_table ;
 int kfree (int ) ;

void ovs_vport_exit(void)
{
 kfree(dev_table);
}
