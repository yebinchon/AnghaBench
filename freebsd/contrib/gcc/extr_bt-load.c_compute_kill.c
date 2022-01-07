
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbitmap ;
typedef int HARD_REG_SET ;


 int NUM_FIXED_BLOCKS ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int all_btrs ;
 int first_btr ;
 int last_btr ;
 int n_basic_blocks ;
 int sbitmap_a_or_b (int ,int ,int ) ;
 int sbitmap_vector_zero (int *,int) ;

__attribute__((used)) static void
compute_kill (sbitmap *bb_kill, sbitmap *btr_defset,
       HARD_REG_SET *btrs_written)
{
  int i;
  int regno;



  sbitmap_vector_zero (bb_kill, n_basic_blocks);
  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    {
      for (regno = first_btr; regno <= last_btr; regno++)
 if (TEST_HARD_REG_BIT (all_btrs, regno)
     && TEST_HARD_REG_BIT (btrs_written[i], regno))
   sbitmap_a_or_b (bb_kill[i], bb_kill[i],
     btr_defset[regno - first_btr]);
    }
}
