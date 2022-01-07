
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int dtrace_prog_t ;
typedef int dtrace_probespec_t ;
typedef int dtrace_hdl_t ;


 int DT_CTX_DPROG ;
 int * dt_compile (int *,int ,int ,int *,int ,int,char* const*,int *,char const*) ;

dtrace_prog_t *
dtrace_program_strcompile(dtrace_hdl_t *dtp, const char *s,
    dtrace_probespec_t spec, uint_t cflags, int argc, char *const argv[])
{
 return (dt_compile(dtp, DT_CTX_DPROG,
     spec, ((void*)0), cflags, argc, argv, ((void*)0), s));
}
