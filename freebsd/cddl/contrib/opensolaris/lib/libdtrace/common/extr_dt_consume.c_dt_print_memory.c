
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 size_t DTRACEOPT_QUIET ;
 scalar_t__ DTRACEOPT_UNSET ;
 int dt_print_bytes (TYPE_1__*,int *,scalar_t__,size_t,int,int,int) ;

__attribute__((used)) static int
dt_print_memory(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr)
{
 int quiet = (dtp->dt_options[DTRACEOPT_QUIET] != DTRACEOPT_UNSET);
 size_t nbytes = *((uintptr_t *) addr);

 return (dt_print_bytes(dtp, fp, addr + sizeof(uintptr_t),
     nbytes, 50, quiet, 1));
}
