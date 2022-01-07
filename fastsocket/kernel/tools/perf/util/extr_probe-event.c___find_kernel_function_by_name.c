
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct map {int dummy; } ;


 int machine ;
 struct symbol* machine__find_kernel_function_by_name (int *,char const*,struct map**,int *) ;

__attribute__((used)) static struct symbol *__find_kernel_function_by_name(const char *name,
           struct map **mapp)
{
 return machine__find_kernel_function_by_name(&machine, name, mapp,
           ((void*)0));
}
