
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unw_word ;
struct TYPE_2__ {struct unw_reg_info* reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;
struct unw_reg_info {int where; unsigned char val; scalar_t__ when; } ;
typedef enum unw_where { ____Placeholder_unw_where } unw_where ;


 scalar_t__ MIN (int,scalar_t__) ;
 int UNW_WHERE_BR ;
 int UNW_WHERE_FR ;
 int UNW_WHERE_GR ;
 int decode_abreg (unsigned char,int ) ;
 int desc_is_active (unsigned char,scalar_t__,struct unw_state_record*) ;

__attribute__((used)) static inline void
desc_spill_reg_p (unsigned char qp, unw_word t, unsigned char abreg,
    unsigned char x, unsigned char ytreg,
    struct unw_state_record *sr)
{
  enum unw_where where = UNW_WHERE_GR;
  struct unw_reg_info *r;

  if (! desc_is_active (qp, t, sr))
    return;

  if (x)
    where = UNW_WHERE_BR;
  else if (ytreg & 0x80)
    where = UNW_WHERE_FR;

  r = sr->curr.reg + decode_abreg (abreg, 0);
  r->where = where;
  r->when = sr->region_start + MIN ((int)t, sr->region_len - 1);
  r->val = ytreg & 0x7f;
}
