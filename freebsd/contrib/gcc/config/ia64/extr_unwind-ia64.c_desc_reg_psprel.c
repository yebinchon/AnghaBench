
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unw_word ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;


 int UNW_WHERE_PSPREL ;
 int set_reg (scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static inline void
desc_reg_psprel (unsigned char reg, unw_word pspoff,
   struct unw_state_record *sr)
{
  set_reg (sr->curr.reg + reg, UNW_WHERE_PSPREL,
    sr->region_start + sr->region_len - 1,
    0x10 - 4*pspoff);
}
