
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;
struct unw_state_record {int epilogue_start; int region_start; int region_len; int epilogue_count; } ;



__attribute__((used)) static inline void
desc_epilogue (unw_word t, unw_word ecount, struct unw_state_record *sr)
{
  sr->epilogue_start = sr->region_start + sr->region_len - 1 - t;
  sr->epilogue_count = ecount + 1;
}
