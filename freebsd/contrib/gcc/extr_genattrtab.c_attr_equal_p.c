
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ ATTR_PERMANENT_P (scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
attr_equal_p (rtx x, rtx y)
{
  return (x == y || (! (ATTR_PERMANENT_P (x) && ATTR_PERMANENT_P (y))
       && rtx_equal_p (x, y)));
}
