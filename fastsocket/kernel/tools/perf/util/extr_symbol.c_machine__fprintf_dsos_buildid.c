
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int user_dsos; int kernel_dsos; } ;
typedef int FILE ;


 size_t __dsos__fprintf_buildid (int *,int *,int) ;

size_t machine__fprintf_dsos_buildid(struct machine *machine, FILE *fp,
         bool with_hits)
{
 return __dsos__fprintf_buildid(&machine->kernel_dsos, fp, with_hits) +
        __dsos__fprintf_buildid(&machine->user_dsos, fp, with_hits);
}
