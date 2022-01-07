
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_expensive_optimizations ;
 scalar_t__ optimize ;
 int optimize_size ;

__attribute__((used)) static bool
gate_duplicate_computed_gotos (void)
{
  return (optimize > 0 && flag_expensive_optimizations && !optimize_size);
}
