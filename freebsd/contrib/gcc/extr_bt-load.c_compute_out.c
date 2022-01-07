
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbitmap ;


 int NUM_FIXED_BLOCKS ;
 int n_basic_blocks ;
 int sbitmap_alloc (int) ;
 int sbitmap_copy (int ,int ) ;
 int sbitmap_free (int ) ;
 int sbitmap_union_of_diff_cg (int ,int ,int ,int ) ;
 int sbitmap_union_of_preds (int ,int *,int) ;

__attribute__((used)) static void
compute_out (sbitmap *bb_out, sbitmap *bb_gen, sbitmap *bb_kill, int max_uid)
{






  int i;
  int changed;
  sbitmap bb_in = sbitmap_alloc (max_uid);

  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    sbitmap_copy (bb_out[i], bb_gen[i]);

  changed = 1;
  while (changed)
    {
      changed = 0;
      for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
 {
   sbitmap_union_of_preds (bb_in, bb_out, i);
   changed |= sbitmap_union_of_diff_cg (bb_out[i], bb_gen[i],
            bb_in, bb_kill[i]);
 }
    }
  sbitmap_free (bb_in);
}
