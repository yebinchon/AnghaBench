
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int DIF_INSTR_LABEL (int ) ;
 int fprintf (int *,char*,char const*,int) ;

__attribute__((used)) static void
dt_dis_branch(const dtrace_difo_t *dp, const char *name,
 dif_instr_t in, FILE *fp)
{
 (void) fprintf(fp, "%-4s %u", name, DIF_INSTR_LABEL(in));
}
