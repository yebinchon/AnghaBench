
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int * cached_fn; int last_fn; int first_fn; } ;



__attribute__((used)) static void
initialize_cu_func_list (struct dwarf2_cu *cu)
{
  cu->first_fn = cu->last_fn = cu->cached_fn = ((void*)0);
}
