
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_index (int ,int ,size_t) ;
 size_t VEC_length (int ,int ) ;
 int VEC_replace (int ,int ,size_t,int ) ;
 int VEC_truncate (int ,int ,size_t) ;
 scalar_t__ reserv_sets_cmp (int ,int ) ;
 int reserv_sets_t ;
 int state_reservs ;

__attribute__((used)) static void
remove_state_duplicate_reservs (void)
{
  size_t i, j;

  for (i = 1, j = 0; i < VEC_length (reserv_sets_t, state_reservs); i++)
    if (reserv_sets_cmp (VEC_index (reserv_sets_t, state_reservs, j),
    VEC_index (reserv_sets_t, state_reservs, i)))
      {
 j++;
 VEC_replace (reserv_sets_t, state_reservs, j,
       VEC_index (reserv_sets_t, state_reservs, i));
      }
  VEC_truncate (reserv_sets_t, state_reservs, j + 1);
}
