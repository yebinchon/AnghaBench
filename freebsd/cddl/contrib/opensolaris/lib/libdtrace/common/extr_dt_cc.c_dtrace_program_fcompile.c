
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int dtrace_prog_t ;
typedef int dtrace_hdl_t ;
typedef int FILE ;


 int DTRACE_PROBESPEC_NAME ;
 int DT_CTX_DPROG ;
 int * dt_compile (int *,int ,int ,int *,int ,int,char* const*,int *,int *) ;

dtrace_prog_t *
dtrace_program_fcompile(dtrace_hdl_t *dtp, FILE *fp,
    uint_t cflags, int argc, char *const argv[])
{
 return (dt_compile(dtp, DT_CTX_DPROG,
     DTRACE_PROBESPEC_NAME, ((void*)0), cflags, argc, argv, fp, ((void*)0)));
}
