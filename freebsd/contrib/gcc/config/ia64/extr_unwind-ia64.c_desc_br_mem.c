
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reg; } ;
struct unw_state_record {int any_spills; scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;


 scalar_t__ UNW_REG_B1 ;
 int UNW_WHERE_SPILL_HOME ;
 int set_reg (scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void
desc_br_mem (unsigned char brmask, struct unw_state_record *sr)
{
  int i;

  for (i = 0; i < 5; ++i)
    {
      if (brmask & 1)
 {
   set_reg (sr->curr.reg + UNW_REG_B1 + i, UNW_WHERE_SPILL_HOME,
     sr->region_start + sr->region_len - 1, 0);
   sr->any_spills = 1;
 }
      brmask >>= 1;
    }
}
