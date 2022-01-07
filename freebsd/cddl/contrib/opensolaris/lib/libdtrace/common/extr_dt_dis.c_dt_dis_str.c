
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void
dt_dis_str(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
 (void) fprintf(fp, "%s", name);
}
