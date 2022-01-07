
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* local_port_range ;
 int local_port_range_lock ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void set_local_port_range(int range[2])
{
 write_seqlock(&local_port_range_lock);
 local_port_range[0] = range[0];
 local_port_range[1] = range[1];
 write_sequnlock(&local_port_range_lock);
}
