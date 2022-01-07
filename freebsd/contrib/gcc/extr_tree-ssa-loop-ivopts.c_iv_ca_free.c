
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_ca {struct iv_ca* n_invariant_uses; int cands; struct iv_ca* n_cand_uses; struct iv_ca* cand_for_use; } ;


 int BITMAP_FREE (int ) ;
 int free (struct iv_ca*) ;

__attribute__((used)) static void
iv_ca_free (struct iv_ca **ivs)
{
  free ((*ivs)->cand_for_use);
  free ((*ivs)->n_cand_uses);
  BITMAP_FREE ((*ivs)->cands);
  free ((*ivs)->n_invariant_uses);
  free (*ivs);
  *ivs = ((void*)0);
}
