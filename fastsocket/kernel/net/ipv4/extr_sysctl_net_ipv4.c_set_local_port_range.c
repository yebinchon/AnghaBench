
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* range; int lock; } ;


 TYPE_1__ sysctl_local_ports ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void set_local_port_range(int range[2])
{
 write_seqlock(&sysctl_local_ports.lock);
 sysctl_local_ports.range[0] = range[0];
 sysctl_local_ports.range[1] = range[1];
 write_sequnlock(&sysctl_local_ports.lock);
}
