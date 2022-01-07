
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STACK ;
 int die (char*) ;
 scalar_t__ isp ;
 scalar_t__ istack ;

__attribute__((used)) static void
icheck_range ()
{
  if (isp < istack)
    die ("underflow in integer stack");
  if (isp >= istack + STACK)
    die ("overflow in integer stack");
}
