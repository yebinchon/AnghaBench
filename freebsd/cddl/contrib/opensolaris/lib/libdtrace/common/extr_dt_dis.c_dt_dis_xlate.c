
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_9__ {int dtdo_xlmlen; TYPE_3__** dtdo_xlmtab; } ;
typedef TYPE_4__ dtrace_difo_t ;
typedef int dif_instr_t ;
struct TYPE_8__ {char* dn_membname; TYPE_2__* dn_membexpr; } ;
struct TYPE_7__ {TYPE_1__* dn_xlator; } ;
struct TYPE_6__ {scalar_t__ dx_id; } ;
typedef int FILE ;


 int DIF_INSTR_RD (int ) ;
 int DIF_INSTR_XLREF (int ) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
dt_dis_xlate(const dtrace_difo_t *dp,
    const char *name, dif_instr_t in, FILE *fp)
{
 uint_t xlr = DIF_INSTR_XLREF(in);

 (void) fprintf(fp, "%-4s DT_XLREF[%u], %%r%u",
     name, xlr, DIF_INSTR_RD(in));

 if (xlr < dp->dtdo_xlmlen) {
  (void) fprintf(fp, "\t\t! DT_XLREF[%u] = %u.%s", xlr,
      (uint_t)dp->dtdo_xlmtab[xlr]->dn_membexpr->dn_xlator->dx_id,
      dp->dtdo_xlmtab[xlr]->dn_membname);
 }
}
