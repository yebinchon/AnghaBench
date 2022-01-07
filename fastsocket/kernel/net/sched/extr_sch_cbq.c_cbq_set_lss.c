
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_lssopt {int change; int flags; int offtime; int maxidle; scalar_t__ minidle; int avpkt; int ewma_log; } ;
struct cbq_class {long minidle; int offtime; int avgidle; int maxidle; int avpkt; int ewma_log; int * tparent; int * borrow; int * share; } ;


 int TCF_CBQ_LSS_AVPKT ;
 int TCF_CBQ_LSS_BOUNDED ;
 int TCF_CBQ_LSS_EWMA ;
 int TCF_CBQ_LSS_FLAGS ;
 int TCF_CBQ_LSS_ISOLATED ;
 int TCF_CBQ_LSS_MAXIDLE ;
 int TCF_CBQ_LSS_MINIDLE ;
 int TCF_CBQ_LSS_OFFTIME ;

__attribute__((used)) static int cbq_set_lss(struct cbq_class *cl, struct tc_cbq_lssopt *lss)
{
 if (lss->change&TCF_CBQ_LSS_FLAGS) {
  cl->share = (lss->flags&TCF_CBQ_LSS_ISOLATED) ? ((void*)0) : cl->tparent;
  cl->borrow = (lss->flags&TCF_CBQ_LSS_BOUNDED) ? ((void*)0) : cl->tparent;
 }
 if (lss->change&TCF_CBQ_LSS_EWMA)
  cl->ewma_log = lss->ewma_log;
 if (lss->change&TCF_CBQ_LSS_AVPKT)
  cl->avpkt = lss->avpkt;
 if (lss->change&TCF_CBQ_LSS_MINIDLE)
  cl->minidle = -(long)lss->minidle;
 if (lss->change&TCF_CBQ_LSS_MAXIDLE) {
  cl->maxidle = lss->maxidle;
  cl->avgidle = lss->maxidle;
 }
 if (lss->change&TCF_CBQ_LSS_OFFTIME)
  cl->offtime = lss->offtime;
 return 0;
}
