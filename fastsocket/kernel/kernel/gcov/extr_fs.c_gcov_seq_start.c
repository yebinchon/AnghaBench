
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {void* private; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ gcov_iter_next (void*) ;
 int gcov_iter_start (void*) ;

__attribute__((used)) static void *gcov_seq_start(struct seq_file *seq, loff_t *pos)
{
 loff_t i;

 gcov_iter_start(seq->private);
 for (i = 0; i < *pos; i++) {
  if (gcov_iter_next(seq->private))
   return ((void*)0);
 }
 return seq->private;
}
