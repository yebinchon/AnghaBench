
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int pc_offset; int pc_size; } ;


 int __parse_common (struct pevent*,void*,int *,int *,char*) ;

__attribute__((used)) static int parse_common_pc(struct pevent *pevent, void *data)
{
 return __parse_common(pevent, data,
         &pevent->pc_size, &pevent->pc_offset,
         "common_preempt_count");
}
