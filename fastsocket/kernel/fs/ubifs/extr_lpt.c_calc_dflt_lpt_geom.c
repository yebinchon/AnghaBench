
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lpt_lebs; int main_lebs; int big_lpt; scalar_t__ lpt_sz; scalar_t__ leb_size; scalar_t__ ltab_sz; } ;


 int EINVAL ;
 int UBIFS_MIN_LPT_LEBS ;
 int div_u64 (scalar_t__,scalar_t__) ;
 int do_calc_lpt_geom (struct ubifs_info*) ;
 int ubifs_err (char*) ;

__attribute__((used)) static int calc_dflt_lpt_geom(struct ubifs_info *c, int *main_lebs,
         int *big_lpt)
{
 int i, lebs_needed;
 long long sz;


 c->lpt_lebs = UBIFS_MIN_LPT_LEBS;
 c->main_lebs = *main_lebs - c->lpt_lebs;
 if (c->main_lebs <= 0)
  return -EINVAL;


 c->big_lpt = 0;





 do_calc_lpt_geom(c);


 if (c->lpt_sz > c->leb_size) {

  c->big_lpt = 1;
  do_calc_lpt_geom(c);
 }


 for (i = 0; i < 64 ; i++) {
  sz = c->lpt_sz * 4;
  lebs_needed = div_u64(sz + c->leb_size - 1, c->leb_size);
  if (lebs_needed > c->lpt_lebs) {

   c->lpt_lebs = lebs_needed;
   c->main_lebs = *main_lebs - c->lpt_lebs;
   if (c->main_lebs <= 0)
    return -EINVAL;
   do_calc_lpt_geom(c);
   continue;
  }
  if (c->ltab_sz > c->leb_size) {
   ubifs_err("LPT ltab too big");
   return -EINVAL;
  }
  *main_lebs = c->main_lebs;
  *big_lpt = c->big_lpt;
  return 0;
 }
 return -EINVAL;
}
