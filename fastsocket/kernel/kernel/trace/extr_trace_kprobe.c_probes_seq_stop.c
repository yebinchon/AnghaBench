
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int mutex_unlock (int *) ;
 int probe_lock ;

__attribute__((used)) static void probes_seq_stop(struct seq_file *m, void *v)
{
 mutex_unlock(&probe_lock);
}
