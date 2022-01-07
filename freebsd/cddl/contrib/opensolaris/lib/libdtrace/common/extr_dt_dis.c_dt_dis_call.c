
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int DIF_INSTR_RD (int ) ;
 int DIF_INSTR_SUBR (int ) ;
 char* dtrace_subrstr (int *,int) ;
 int fprintf (int *,char*,char const*,int,int,char*) ;

__attribute__((used)) static void
dt_dis_call(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
 uint_t subr = DIF_INSTR_SUBR(in);

 (void) fprintf(fp, "%-4s DIF_SUBR(%u), %%r%u\t\t! %s",
     name, subr, DIF_INSTR_RD(in), dtrace_subrstr(((void*)0), subr));
}
