
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int pid_offset; int pid_size; } ;


 int __parse_common (struct pevent*,void*,int *,int *,char*) ;

__attribute__((used)) static int parse_common_pid(struct pevent *pevent, void *data)
{
 return __parse_common(pevent, data,
         &pevent->pid_size, &pevent->pid_offset,
         "common_pid");
}
