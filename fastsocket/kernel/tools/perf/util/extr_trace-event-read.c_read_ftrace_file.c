
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int free (char*) ;
 char* malloc_or_die (unsigned long long) ;
 int parse_ftrace_file (struct pevent*,char*,unsigned long long) ;
 int read_or_die (char*,unsigned long long) ;

__attribute__((used)) static void read_ftrace_file(struct pevent *pevent, unsigned long long size)
{
 char *buf;

 buf = malloc_or_die(size);
 read_or_die(buf, size);
 parse_ftrace_file(pevent, buf, size);
 free(buf);
}
