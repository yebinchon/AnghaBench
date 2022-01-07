
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_MODE (int ) ;

__attribute__((used)) static bool
uses_mode_macro_p (rtx x, int mode)
{
  return (int) GET_MODE (x) == mode;
}
