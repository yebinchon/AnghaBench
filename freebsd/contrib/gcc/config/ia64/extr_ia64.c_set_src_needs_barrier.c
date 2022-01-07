
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_flags {int is_branch; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CALL ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ ZERO_EXTRACT ;
 int gcc_assert (int ) ;
 scalar_t__ ia64_spec_check_src_p (scalar_t__) ;
 scalar_t__ pc_rtx ;
 int rtx_needs_barrier (scalar_t__,struct reg_flags,int) ;

__attribute__((used)) static int
set_src_needs_barrier (rtx x, struct reg_flags flags, int pred)
{
  int need_barrier = 0;
  rtx dst;
  rtx src = SET_SRC (x);

  if (GET_CODE (src) == CALL)


    return rtx_needs_barrier (src, flags, pred);
  else if (SET_DEST (x) == pc_rtx)
    {



      if (!ia64_spec_check_src_p (src))
 flags.is_branch = 1;
      return rtx_needs_barrier (src, flags, pred);
    }

  if (ia64_spec_check_src_p (src))


    {
      gcc_assert (REG_P (XEXP (src, 2)));
      need_barrier = rtx_needs_barrier (XEXP (src, 2), flags, pred);


      src = XEXP (src, 1);
    }

  need_barrier |= rtx_needs_barrier (src, flags, pred);

  dst = SET_DEST (x);
  if (GET_CODE (dst) == ZERO_EXTRACT)
    {
      need_barrier |= rtx_needs_barrier (XEXP (dst, 1), flags, pred);
      need_barrier |= rtx_needs_barrier (XEXP (dst, 2), flags, pred);
    }
  return need_barrier;
}
