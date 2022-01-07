
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef int u_longlong_t ;
struct TYPE_3__ {int dtdo_intlen; scalar_t__* dtdo_inttab; } ;
typedef TYPE_1__ dtrace_difo_t ;
typedef int dif_instr_t ;
typedef int FILE ;


 int DIF_INSTR_INTEGER (int ) ;
 int DIF_INSTR_RD (int ) ;
 int fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static void
dt_dis_setx(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
 uint_t intptr = DIF_INSTR_INTEGER(in);

 (void) fprintf(fp, "%-4s DT_INTEGER[%u], %%r%u", name,
     intptr, DIF_INSTR_RD(in));

 if (intptr < dp->dtdo_intlen) {
  (void) fprintf(fp, "\t\t! 0x%llx",
      (u_longlong_t)dp->dtdo_inttab[intptr]);
 }
}
