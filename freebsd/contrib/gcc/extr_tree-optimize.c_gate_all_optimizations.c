
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errorcount ;
 int optimize ;
 scalar_t__ sorrycount ;

__attribute__((used)) static bool
gate_all_optimizations (void)
{
  return (optimize >= 1

   && !(errorcount || sorrycount));
}
