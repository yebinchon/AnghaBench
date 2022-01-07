
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int DIF_INSTR_RD (int ) ;
 int DIF_INSTR_VAR (int ) ;
 int dt_dis_scope (char const*) ;
 char* dt_dis_varname (int const*,int,int ) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
dt_dis_ldv(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
 uint_t var = DIF_INSTR_VAR(in);
 const char *vname;

 (void) fprintf(fp, "%-4s DT_VAR(%u), %%r%u",
     name, var, DIF_INSTR_RD(in));

 if ((vname = dt_dis_varname(dp, var, dt_dis_scope(name))) != ((void*)0))
  (void) fprintf(fp, "\t\t! DT_VAR(%u) = \"%s\"", var, vname);
}
