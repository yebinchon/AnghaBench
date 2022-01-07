
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {long ctokens; long cbuffer; long mbuffer; int ceil; } ;


 scalar_t__ qdisc_l2t (int ,int) ;

__attribute__((used)) static inline void htb_accnt_ctokens(struct htb_class *cl, int bytes, long diff)
{
 long toks = diff + cl->ctokens;

 if (toks > cl->cbuffer)
  toks = cl->cbuffer;
 toks -= (long) qdisc_l2t(cl->ceil, bytes);
 if (toks <= -cl->mbuffer)
  toks = 1 - cl->mbuffer;

 cl->ctokens = toks;
}
