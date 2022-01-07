
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int consider_all_candidates; int important_candidates; } ;
struct iv_use {int related_cands; } ;
struct iv_cand {scalar_t__ important; } ;


 int BITMAP_FREE (int ) ;
 unsigned int CONSIDER_ALL_CANDIDATES_BOUND ;
 int bitmap_ior_into (int ,int ) ;
 int bitmap_set_bit (int ,unsigned int) ;
 struct iv_cand* iv_cand (struct ivopts_data*,unsigned int) ;
 struct iv_use* iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_cands (struct ivopts_data*) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;

__attribute__((used)) static void
record_important_candidates (struct ivopts_data *data)
{
  unsigned i;
  struct iv_use *use;

  for (i = 0; i < n_iv_cands (data); i++)
    {
      struct iv_cand *cand = iv_cand (data, i);

      if (cand->important)
 bitmap_set_bit (data->important_candidates, i);
    }

  data->consider_all_candidates = (n_iv_cands (data)
       <= CONSIDER_ALL_CANDIDATES_BOUND);

  if (data->consider_all_candidates)
    {


      for (i = 0; i < n_iv_uses (data); i++)
 {
   use = iv_use (data, i);
   BITMAP_FREE (use->related_cands);
 }
    }
  else
    {

      for (i = 0; i < n_iv_uses (data); i++)
 bitmap_ior_into (iv_use (data, i)->related_cands,
    data->important_candidates);
    }
}
