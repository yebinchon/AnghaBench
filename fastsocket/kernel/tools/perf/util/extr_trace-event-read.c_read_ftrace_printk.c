
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int free (char*) ;
 char* malloc_or_die (unsigned int) ;
 int parse_ftrace_printk (struct pevent*,char*,unsigned int) ;
 unsigned int read4 (struct pevent*) ;
 int read_or_die (char*,unsigned int) ;

__attribute__((used)) static void read_ftrace_printk(struct pevent *pevent)
{
 unsigned int size;
 char *buf;

 size = read4(pevent);
 if (!size)
  return;

 buf = malloc_or_die(size);
 read_or_die(buf, size);

 parse_ftrace_printk(pevent, buf, size);

 free(buf);
}
