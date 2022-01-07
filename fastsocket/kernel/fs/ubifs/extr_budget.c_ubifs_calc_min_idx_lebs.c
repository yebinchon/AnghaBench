
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {long long old_idx_sz; long long budg_idx_growth; long long budg_uncommitted_idx; scalar_t__ idx_leb_size; } ;


 int MIN_INDEX_LEBS ;
 int div_u64 (scalar_t__,scalar_t__) ;

int ubifs_calc_min_idx_lebs(struct ubifs_info *c)
{
 int idx_lebs;
 long long idx_size;

 idx_size = c->old_idx_sz + c->budg_idx_growth + c->budg_uncommitted_idx;

 idx_size += idx_size << 1;





 idx_lebs = div_u64(idx_size + c->idx_leb_size - 1, c->idx_leb_size);




 idx_lebs += 1;
 if (idx_lebs < MIN_INDEX_LEBS)
  idx_lebs = MIN_INDEX_LEBS;
 return idx_lebs;
}
