
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivopts_data {int dummy; } ;
struct iv_use {unsigned int id; } ;
struct iv_ca {scalar_t__* n_cand_uses; int cand_use_cost; int cand_cost; int n_cands; int n_regs; int cands; struct cost_pair** cand_for_use; int bad_uses; } ;
struct cost_pair {int depends_on; scalar_t__ cost; TYPE_1__* cand; } ;
struct TYPE_2__ {unsigned int id; int depends_on; scalar_t__ cost; scalar_t__ iv; } ;


 int bitmap_clear_bit (int ,unsigned int) ;
 int iv_ca_recount_cost (struct ivopts_data*,struct iv_ca*) ;
 int iv_ca_set_remove_invariants (struct iv_ca*,int ) ;

__attribute__((used)) static void
iv_ca_set_no_cp (struct ivopts_data *data, struct iv_ca *ivs,
   struct iv_use *use)
{
  unsigned uid = use->id, cid;
  struct cost_pair *cp;

  cp = ivs->cand_for_use[uid];
  if (!cp)
    return;
  cid = cp->cand->id;

  ivs->bad_uses++;
  ivs->cand_for_use[uid] = ((void*)0);
  ivs->n_cand_uses[cid]--;

  if (ivs->n_cand_uses[cid] == 0)
    {
      bitmap_clear_bit (ivs->cands, cid);

      if (cp->cand->iv)
 ivs->n_regs--;
      ivs->n_cands--;
      ivs->cand_cost -= cp->cand->cost;

      iv_ca_set_remove_invariants (ivs, cp->cand->depends_on);
    }

  ivs->cand_use_cost -= cp->cost;

  iv_ca_set_remove_invariants (ivs, cp->depends_on);
  iv_ca_recount_cost (data, ivs);
}
