
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;
struct unw_reg_info {scalar_t__ where; int when; } ;


 scalar_t__ UNW_WHERE_SPILL_HOME ;
 int abort () ;

__attribute__((used)) static inline void
spill_next_when (struct unw_reg_info **regp, struct unw_reg_info *lim,
   unw_word t)
{
  struct unw_reg_info *reg;

  for (reg = *regp; reg <= lim; ++reg)
    {
      if (reg->where == UNW_WHERE_SPILL_HOME)
 {
   reg->when = t;
   *regp = reg + 1;
   return;
 }
    }

  abort ();
}
