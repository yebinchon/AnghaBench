
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
typedef int dtrace_hdl_t ;
struct TYPE_7__ {int dtdo_len; int dtdo_intlen; int dtdo_rtype; int * dtdo_inttab; int * dtdo_buf; } ;
typedef TYPE_1__ dtrace_difo_t ;
typedef int dtrace_actkind_t ;
struct TYPE_8__ {int dtad_kind; TYPE_1__* dtad_difo; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
typedef int dif_instr_t ;
struct TYPE_9__ {int pcb_jmpbuf; int * pcb_hdl; } ;


 int DIF_INSTR_RET (int) ;
 int DIF_INSTR_SETX (int ,int) ;
 int EDT_NOMEM ;
 void* dt_alloc (int *,int) ;
 int dt_difo_free (int *,TYPE_1__*) ;
 int dt_int_rtype ;
 TYPE_1__* dt_zalloc (int *,int) ;
 int longjmp (int ,int ) ;
 TYPE_3__* yypcb ;

__attribute__((used)) static void
dt_action_difconst(dtrace_actdesc_t *ap, uint_t id, dtrace_actkind_t kind)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dtrace_difo_t *dp = dt_zalloc(dtp, sizeof (dtrace_difo_t));

 if (dp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dp->dtdo_buf = dt_alloc(dtp, sizeof (dif_instr_t) * 2);
 dp->dtdo_inttab = dt_alloc(dtp, sizeof (uint64_t));

 if (dp->dtdo_buf == ((void*)0) || dp->dtdo_inttab == ((void*)0)) {
  dt_difo_free(dtp, dp);
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
 }

 dp->dtdo_buf[0] = DIF_INSTR_SETX(0, 1);
 dp->dtdo_buf[1] = DIF_INSTR_RET(1);
 dp->dtdo_len = 2;
 dp->dtdo_inttab[0] = id;
 dp->dtdo_intlen = 1;
 dp->dtdo_rtype = dt_int_rtype;

 ap->dtad_difo = dp;
 ap->dtad_kind = kind;
}
