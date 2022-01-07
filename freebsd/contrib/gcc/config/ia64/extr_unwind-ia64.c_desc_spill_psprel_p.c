
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unw_word ;
struct TYPE_2__ {struct unw_reg_info* reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;
struct unw_reg_info {int val; scalar_t__ when; int where; } ;


 scalar_t__ MIN (int,scalar_t__) ;
 int UNW_WHERE_PSPREL ;
 int decode_abreg (unsigned char,int) ;
 int desc_is_active (unsigned char,int,struct unw_state_record*) ;

__attribute__((used)) static inline void
desc_spill_psprel_p (unsigned char qp, unw_word t, unsigned char abreg,
       unw_word pspoff, struct unw_state_record *sr)
{
  struct unw_reg_info *r;

  if (! desc_is_active (qp, t, sr))
    return;

  r = sr->curr.reg + decode_abreg (abreg, 1);
  r->where = UNW_WHERE_PSPREL;
  r->when = sr->region_start + MIN((int)t, sr->region_len - 1);
  r->val = 0x10 - 4*pspoff;
}
