
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int read4 (struct pevent*) ;
 unsigned long long read8 (struct pevent*) ;
 int read_ftrace_file (struct pevent*,unsigned long long) ;

__attribute__((used)) static void read_ftrace_files(struct pevent *pevent)
{
 unsigned long long size;
 int count;
 int i;

 count = read4(pevent);

 for (i = 0; i < count; i++) {
  size = read8(pevent);
  read_ftrace_file(pevent, size);
 }
}
