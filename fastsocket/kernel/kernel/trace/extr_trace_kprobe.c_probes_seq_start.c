
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int mutex_lock (int *) ;
 int probe_list ;
 int probe_lock ;
 void* seq_list_start (int *,int ) ;

__attribute__((used)) static void *probes_seq_start(struct seq_file *m, loff_t *pos)
{
 mutex_lock(&probe_lock);
 return seq_list_start(&probe_list, *pos);
}
