
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int hashval_t ;


 scalar_t__ INSN_P (int const) ;
 int REGNO (int const) ;
 scalar_t__ REG_P (int const) ;
 int SET_DEST (int) ;
 int gcc_assert (int) ;
 int single_set (int const) ;

__attribute__((used)) static hashval_t
hash_descriptor_extension (const void *p)
{
  const rtx r = (rtx) p;
  rtx set, lhs;

  if (r && REG_P (r))
    return REGNO (r);

  gcc_assert (r && INSN_P (r));
  set = single_set (r);
  gcc_assert (set);
  lhs = SET_DEST (set);
  return REGNO (lhs);
}
