
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivopts_data {int dummy; } ;
struct iv_use {int selected; } ;
struct iv_ca {int dummy; } ;
struct TYPE_2__ {int cand; } ;


 int TDF_DETAILS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 struct iv_ca* get_initial_solution (struct ivopts_data*) ;
 TYPE_1__* iv_ca_cand_for_use (struct iv_ca*,struct iv_use*) ;
 int iv_ca_cost (struct iv_ca*) ;
 int iv_ca_dump (struct ivopts_data*,scalar_t__,struct iv_ca*) ;
 struct iv_use* iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;
 scalar_t__ try_improve_iv_set (struct ivopts_data*,struct iv_ca*) ;

__attribute__((used)) static struct iv_ca *
find_optimal_iv_set (struct ivopts_data *data)
{
  unsigned i;
  struct iv_ca *set;
  struct iv_use *use;


  set = get_initial_solution (data);
  if (!set)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "Unable to substitute for ivs, failed.\n");
      return ((void*)0);
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Initial set of candidates:\n");
      iv_ca_dump (data, dump_file, set);
    }

  while (try_improve_iv_set (data, set))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Improved to:\n");
   iv_ca_dump (data, dump_file, set);
 }
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "Final cost %d\n\n", iv_ca_cost (set));

  for (i = 0; i < n_iv_uses (data); i++)
    {
      use = iv_use (data, i);
      use->selected = iv_ca_cand_for_use (set, use)->cand;
    }

  return set;
}
