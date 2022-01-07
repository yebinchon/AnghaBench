
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;


 int memcpy (scalar_t__,char const*,int) ;
 int strlen (char const*) ;

int seq_puts(struct seq_file *m, const char *s)
{
 int len = strlen(s);
 if (m->count + len < m->size) {
  memcpy(m->buf + m->count, s, len);
  m->count += len;
  return 0;
 }
 m->count = m->size;
 return -1;
}
