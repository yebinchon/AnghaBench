
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STACK ;
 int die (char*) ;
 scalar_t__ stack ;
 scalar_t__ tos ;

__attribute__((used)) static void
check_range ()
{
  if (tos < stack)
    die ("underflow in string stack");
  if (tos >= stack + STACK)
    die ("overflow in string stack");
}
