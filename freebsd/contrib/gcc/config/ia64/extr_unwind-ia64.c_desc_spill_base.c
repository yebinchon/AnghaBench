
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;
struct unw_state_record {int spill_offset; } ;



__attribute__((used)) static inline void
desc_spill_base (unw_word pspoff, struct unw_state_record *sr)
{
  sr->spill_offset = 0x10 - 4*pspoff;
}
