
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ optimize ;

__attribute__((used)) static rtx
get_subtarget (rtx x)
{
  return (optimize
          || x == 0

    || !REG_P (x)

    || REGNO (x) < FIRST_PSEUDO_REGISTER
   ? 0 : x);
}
