
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* local_port_range ;
 int local_port_range_lock ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

void phonet_get_local_port_range(int *min, int *max)
{
 unsigned seq;
 do {
  seq = read_seqbegin(&local_port_range_lock);
  if (min)
   *min = local_port_range[0];
  if (max)
   *max = local_port_range[1];
 } while (read_seqretry(&local_port_range_lock, seq));
}
