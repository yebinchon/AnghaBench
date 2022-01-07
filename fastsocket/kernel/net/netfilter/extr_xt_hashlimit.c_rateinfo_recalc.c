
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ credit; unsigned long prev; scalar_t__ credit_cap; } ;
struct dsthash_ent {TYPE_1__ rateinfo; } ;


 unsigned long CREDITS_PER_JIFFY ;

__attribute__((used)) static inline void rateinfo_recalc(struct dsthash_ent *dh, unsigned long now)
{
 dh->rateinfo.credit += (now - dh->rateinfo.prev) * CREDITS_PER_JIFFY;
 if (dh->rateinfo.credit > dh->rateinfo.credit_cap)
  dh->rateinfo.credit = dh->rateinfo.credit_cap;
 dh->rateinfo.prev = now;
}
