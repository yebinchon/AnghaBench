
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int mutex_lock (int *) ;
 void* seq_list_start (int *,int ) ;
 int tty_drivers ;
 int tty_mutex ;

__attribute__((used)) static void *t_start(struct seq_file *m, loff_t *pos)
{
 mutex_lock(&tty_mutex);
 return seq_list_start(&tty_drivers, *pos);
}
