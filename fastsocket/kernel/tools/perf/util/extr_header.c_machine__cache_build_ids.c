
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int user_dsos; int kernel_dsos; } ;


 int __dsos__cache_build_ids (int *,char const*) ;

__attribute__((used)) static int machine__cache_build_ids(struct machine *machine, const char *debugdir)
{
 int ret = __dsos__cache_build_ids(&machine->kernel_dsos, debugdir);
 ret |= __dsos__cache_build_ids(&machine->user_dsos, debugdir);
 return ret;
}
