
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 unsigned long HZ ;
 unsigned int atomic_read (int *) ;
 int * cachefiles_create_histogram ;
 int * cachefiles_lookup_histogram ;
 int * cachefiles_mkdir_histogram ;
 int seq_printf (struct seq_file*,char*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int cachefiles_histogram_show(struct seq_file *m, void *v)
{
 unsigned long index;
 unsigned x, y, z, t;

 switch ((unsigned long) v) {
 case 1:
  seq_puts(m, "JIFS  SECS  LOOKUPS   MKDIRS    CREATES\n");
  return 0;
 case 2:
  seq_puts(m, "===== ===== ========= ========= =========\n");
  return 0;
 default:
  index = (unsigned long) v - 3;
  x = atomic_read(&cachefiles_lookup_histogram[index]);
  y = atomic_read(&cachefiles_mkdir_histogram[index]);
  z = atomic_read(&cachefiles_create_histogram[index]);
  if (x == 0 && y == 0 && z == 0)
   return 0;

  t = (index * 1000) / HZ;

  seq_printf(m, "%4lu  0.%03u %9u %9u %9u\n", index, t, x, y, z);
  return 0;
 }
}
