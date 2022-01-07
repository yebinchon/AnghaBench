
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* range; int lock; } ;


 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 TYPE_1__ sysctl_local_ports ;

void inet_get_local_port_range(int *low, int *high)
{
 unsigned seq;
 do {
  seq = read_seqbegin(&sysctl_local_ports.lock);

  *low = sysctl_local_ports.range[0];
  *high = sysctl_local_ports.range[1];
 } while (read_seqretry(&sysctl_local_ports.lock, seq));
}
