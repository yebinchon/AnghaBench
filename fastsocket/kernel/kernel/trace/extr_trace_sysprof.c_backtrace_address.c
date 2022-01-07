
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backtrace_info {scalar_t__ pos; int data; int tr; } ;


 int __trace_special (int ,int ,int,unsigned long,int ) ;
 scalar_t__ sample_max_depth ;

__attribute__((used)) static void backtrace_address(void *data, unsigned long addr, int reliable)
{
 struct backtrace_info *info = data;

 if (info->pos < sample_max_depth && reliable) {
  __trace_special(info->tr, info->data, 1, addr, 0);

  info->pos++;
 }
}
