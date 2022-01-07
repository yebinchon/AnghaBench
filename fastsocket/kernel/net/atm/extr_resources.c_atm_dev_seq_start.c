
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 int atm_dev_mutex ;
 void* dev_get_idx (scalar_t__) ;
 int mutex_lock (int *) ;

void *atm_dev_seq_start(struct seq_file *seq, loff_t *pos)
{
 mutex_lock(&atm_dev_mutex);
 return *pos ? dev_get_idx(*pos) : SEQ_START_TOKEN;
}
