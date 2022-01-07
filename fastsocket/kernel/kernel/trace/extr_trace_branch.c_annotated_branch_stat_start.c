
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_stat {int dummy; } ;


 void* __start_annotated_branch_profile ;

__attribute__((used)) static void *annotated_branch_stat_start(struct tracer_stat *trace)
{
 return __start_annotated_branch_profile;
}
