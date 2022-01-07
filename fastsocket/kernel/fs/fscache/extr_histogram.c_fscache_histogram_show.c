
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 unsigned long HZ ;
 unsigned int atomic_read (int *) ;
 int * fscache_obj_instantiate_histogram ;
 int * fscache_objs_histogram ;
 int * fscache_ops_histogram ;
 int * fscache_retrieval_delay_histogram ;
 int * fscache_retrieval_histogram ;
 int seq_printf (struct seq_file*,char*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int fscache_histogram_show(struct seq_file *m, void *v)
{
 unsigned long index;
 unsigned n[5], t;

 switch ((unsigned long) v) {
 case 1:
  seq_puts(m, "JIFS  SECS  OBJ INST  OP RUNS   OBJ RUNS "
    " RETRV DLY RETRIEVLS\n");
  return 0;
 case 2:
  seq_puts(m, "===== ===== ========= ========= ========="
    " ========= =========\n");
  return 0;
 default:
  index = (unsigned long) v - 3;
  n[0] = atomic_read(&fscache_obj_instantiate_histogram[index]);
  n[1] = atomic_read(&fscache_ops_histogram[index]);
  n[2] = atomic_read(&fscache_objs_histogram[index]);
  n[3] = atomic_read(&fscache_retrieval_delay_histogram[index]);
  n[4] = atomic_read(&fscache_retrieval_histogram[index]);
  if (!(n[0] | n[1] | n[2] | n[3] | n[4]))
   return 0;

  t = (index * 1000) / HZ;

  seq_printf(m, "%4lu  0.%03u %9u %9u %9u %9u %9u\n",
      index, t, n[0], n[1], n[2], n[3], n[4]);
  return 0;
 }
}
