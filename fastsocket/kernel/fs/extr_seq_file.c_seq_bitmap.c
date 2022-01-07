
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;


 int bitmap_scnprintf (scalar_t__,scalar_t__,unsigned long const*,unsigned int) ;

int seq_bitmap(struct seq_file *m, const unsigned long *bits,
       unsigned int nr_bits)
{
 if (m->count < m->size) {
  int len = bitmap_scnprintf(m->buf + m->count,
    m->size - m->count, bits, nr_bits);
  if (m->count + len < m->size) {
   m->count += len;
   return 0;
  }
 }
 m->count = m->size;
 return -1;
}
