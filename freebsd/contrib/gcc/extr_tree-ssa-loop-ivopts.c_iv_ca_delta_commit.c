
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_ca_delta {int use; struct cost_pair* new_cp; struct cost_pair* old_cp; struct iv_ca_delta* next_change; } ;
struct iv_ca {int dummy; } ;
struct cost_pair {int dummy; } ;


 int gcc_assert (int) ;
 struct cost_pair* iv_ca_cand_for_use (struct iv_ca*,int ) ;
 struct iv_ca_delta* iv_ca_delta_reverse (struct iv_ca_delta*) ;
 int iv_ca_set_cp (struct ivopts_data*,struct iv_ca*,int ,struct cost_pair*) ;

__attribute__((used)) static void
iv_ca_delta_commit (struct ivopts_data *data, struct iv_ca *ivs,
      struct iv_ca_delta *delta, bool forward)
{
  struct cost_pair *from, *to;
  struct iv_ca_delta *act;

  if (!forward)
    delta = iv_ca_delta_reverse (delta);

  for (act = delta; act; act = act->next_change)
    {
      from = act->old_cp;
      to = act->new_cp;
      gcc_assert (iv_ca_cand_for_use (ivs, act->use) == from);
      iv_ca_set_cp (data, ivs, act->use, to);
    }

  if (!forward)
    iv_ca_delta_reverse (delta);
}
