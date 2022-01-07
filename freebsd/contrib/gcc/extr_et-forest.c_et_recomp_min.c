
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {scalar_t__ min; scalar_t__ depth; struct et_occ* min_occ; struct et_occ* next; struct et_occ* prev; } ;



__attribute__((used)) static inline void
et_recomp_min (struct et_occ *occ)
{
  struct et_occ *mson = occ->prev;

  if (!mson
      || (occ->next
   && mson->min > occ->next->min))
      mson = occ->next;

  if (mson && mson->min < 0)
    {
      occ->min = mson->min + occ->depth;
      occ->min_occ = mson->min_occ;
    }
  else
    {
      occ->min = occ->depth;
      occ->min_occ = occ;
    }
}
