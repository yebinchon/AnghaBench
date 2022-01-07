
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_function_call {int (* func ) (void*) ;void* info; int ret; int * p; } ;


 int ENXIO ;
 int remote_function ;
 int smp_call_function_single (int,int ,struct remote_function_call*,int) ;

__attribute__((used)) static int cpu_function_call(int cpu, int (*func) (void *info), void *info)
{
 struct remote_function_call data = {
  .p = ((void*)0),
  .func = func,
  .info = info,
  .ret = -ENXIO,
 };

 smp_call_function_single(cpu, remote_function, &data, 1);

 return data.ret;
}
