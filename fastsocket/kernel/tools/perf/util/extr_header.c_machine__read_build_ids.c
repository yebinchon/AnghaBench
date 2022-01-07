
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int user_dsos; int kernel_dsos; } ;


 int __dsos__read_build_ids (int *,int) ;

__attribute__((used)) static bool machine__read_build_ids(struct machine *machine, bool with_hits)
{
 bool ret = __dsos__read_build_ids(&machine->kernel_dsos, with_hits);
 ret |= __dsos__read_build_ids(&machine->user_dsos, with_hits);
 return ret;
}
