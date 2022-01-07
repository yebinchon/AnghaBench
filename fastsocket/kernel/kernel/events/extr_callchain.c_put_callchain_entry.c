
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpu_var (int ) ;
 int callchain_recursion ;
 int put_recursion_context (int ,int) ;

__attribute__((used)) static void
put_callchain_entry(int rctx)
{
 put_recursion_context(__get_cpu_var(callchain_recursion), rctx);
}
