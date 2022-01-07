
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int * force_reg (int,int *) ;
 int gcc_assert (int ) ;
 int * lowpart_subreg (int,int *,int) ;

__attribute__((used)) static rtx
lowpart_subreg_maybe_copy (enum machine_mode omode, rtx val,
      enum machine_mode imode)
{
  rtx ret;
  ret = lowpart_subreg (omode, val, imode);
  if (ret == ((void*)0))
    {
      val = force_reg (imode, val);
      ret = lowpart_subreg (omode, val, imode);
      gcc_assert (ret != ((void*)0));
    }
  return ret;
}
