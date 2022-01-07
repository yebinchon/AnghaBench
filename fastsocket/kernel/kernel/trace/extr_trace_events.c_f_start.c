
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ FORMAT_HEADER ;
 void* f_next (struct seq_file*,void*,scalar_t__*) ;

__attribute__((used)) static void *f_start(struct seq_file *m, loff_t *pos)
{
 loff_t l = 0;
 void *p;


 if (!*pos)
  return (void *)FORMAT_HEADER;

 p = (void *)FORMAT_HEADER;
 do {
  p = f_next(m, p, &l);
 } while (p && l < *pos);

 return p;
}
