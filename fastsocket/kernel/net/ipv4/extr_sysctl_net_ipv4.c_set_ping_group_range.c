
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_table {int * data; } ;
typedef int gid_t ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__ sysctl_local_ports ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void set_ping_group_range(struct ctl_table *table, gid_t range[2])
{
 gid_t *data = table->data;
 write_seqlock(&sysctl_local_ports.lock);
 data[0] = range[0];
 data[1] = range[1];
 write_sequnlock(&sysctl_local_ports.lock);
}
