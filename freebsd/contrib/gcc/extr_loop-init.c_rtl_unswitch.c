
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_loops ;
 int unswitch_loops (scalar_t__) ;

__attribute__((used)) static unsigned int
rtl_unswitch (void)
{
  if (current_loops)
    unswitch_loops (current_loops);
  return 0;
}
