
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ COND_EXEC ;
 int COND_EXEC_CODE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 int ia64_spec_check_src_p (int ) ;

__attribute__((used)) static int
ia64_spec_check_p (rtx x)
{
  x = PATTERN (x);
  if (GET_CODE (x) == COND_EXEC)
    x = COND_EXEC_CODE (x);
  if (GET_CODE (x) == SET)
    return ia64_spec_check_src_p (SET_SRC (x));
  return 0;
}
