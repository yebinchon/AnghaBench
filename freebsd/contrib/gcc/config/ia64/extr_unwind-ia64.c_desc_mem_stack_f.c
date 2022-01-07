
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unw_word ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;


 scalar_t__ MIN (int,scalar_t__) ;
 scalar_t__ UNW_REG_PSP ;
 int UNW_WHERE_NONE ;
 int set_reg (scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static inline void
desc_mem_stack_f (unw_word t, unw_word size, struct unw_state_record *sr)
{
  set_reg (sr->curr.reg + UNW_REG_PSP, UNW_WHERE_NONE,
    sr->region_start + MIN ((int)t, sr->region_len - 1), 16*size);
}
