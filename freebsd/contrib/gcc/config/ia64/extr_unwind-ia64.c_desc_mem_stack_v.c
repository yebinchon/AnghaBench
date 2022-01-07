
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ unw_word ;
struct TYPE_4__ {TYPE_1__* reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_2__ curr; } ;
struct TYPE_3__ {scalar_t__ when; } ;


 scalar_t__ MIN (int,scalar_t__) ;
 size_t UNW_REG_PSP ;

__attribute__((used)) static inline void
desc_mem_stack_v (unw_word t, struct unw_state_record *sr)
{
  sr->curr.reg[UNW_REG_PSP].when
    = sr->region_start + MIN ((int)t, sr->region_len - 1);
}
