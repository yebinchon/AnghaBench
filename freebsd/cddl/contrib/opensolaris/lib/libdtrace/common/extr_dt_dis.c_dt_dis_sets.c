
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int dtdo_strlen; char* dtdo_strtab; } ;
typedef TYPE_1__ dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int DIF_INSTR_RD (int ) ;
 int DIF_INSTR_STRING (int ) ;
 int fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static void
dt_dis_sets(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
 uint_t strptr = DIF_INSTR_STRING(in);

 (void) fprintf(fp, "%-4s DT_STRING[%u], %%r%u", name,
     strptr, DIF_INSTR_RD(in));

 if (strptr < dp->dtdo_strlen)
  (void) fprintf(fp, "\t\t! \"%s\"", dp->dtdo_strtab + strptr);
}
