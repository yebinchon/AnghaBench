
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errorcount ;
 scalar_t__ optimize ;
 scalar_t__ sorrycount ;

__attribute__((used)) static bool
gate_no_optimization (void)
{


  return optimize == 0 || sorrycount || errorcount;
}
