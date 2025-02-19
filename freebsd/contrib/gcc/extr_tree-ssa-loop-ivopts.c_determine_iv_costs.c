
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_cand {int cost; } ;


 int TDF_DETAILS ;
 int determine_iv_cost (struct ivopts_data*,struct iv_cand*) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 struct iv_cand* iv_cand (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_cands (struct ivopts_data*) ;

__attribute__((used)) static void
determine_iv_costs (struct ivopts_data *data)
{
  unsigned i;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Candidate costs:\n");
      fprintf (dump_file, "  cand\tcost\n");
    }

  for (i = 0; i < n_iv_cands (data); i++)
    {
      struct iv_cand *cand = iv_cand (data, i);

      determine_iv_cost (data, cand);

      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "  %d\t%d\n", i, cand->cost);
    }

if (dump_file && (dump_flags & TDF_DETAILS))
      fprintf (dump_file, "\n");
}
