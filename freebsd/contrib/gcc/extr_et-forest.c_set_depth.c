
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {int depth; int min; } ;



__attribute__((used)) static inline void
set_depth (struct et_occ *occ, int d)
{
  if (!occ)
    return;

  occ->min += d - occ->depth;
  occ->depth = d;
}
