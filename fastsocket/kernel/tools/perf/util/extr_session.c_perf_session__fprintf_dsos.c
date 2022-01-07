
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_dsos; int kernel_dsos; } ;
struct perf_session {int machines; TYPE_1__ host_machine; } ;
typedef int FILE ;


 size_t __dsos__fprintf (int *,int *) ;
 size_t machines__fprintf_dsos (int *,int *) ;

size_t perf_session__fprintf_dsos(struct perf_session *self, FILE *fp)
{
 return __dsos__fprintf(&self->host_machine.kernel_dsos, fp) +
        __dsos__fprintf(&self->host_machine.user_dsos, fp) +
        machines__fprintf_dsos(&self->machines, fp);
}
