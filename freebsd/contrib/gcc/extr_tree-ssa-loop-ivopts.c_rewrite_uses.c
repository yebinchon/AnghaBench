
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {struct iv_cand* selected; } ;
struct iv_cand {int dummy; } ;


 int gcc_assert (struct iv_cand*) ;
 struct iv_use* iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;
 int rewrite_use (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;

__attribute__((used)) static void
rewrite_uses (struct ivopts_data *data)
{
  unsigned i;
  struct iv_cand *cand;
  struct iv_use *use;

  for (i = 0; i < n_iv_uses (data); i++)
    {
      use = iv_use (data, i);
      cand = use->selected;
      gcc_assert (cand);

      rewrite_use (data, use, cand);
    }
}
