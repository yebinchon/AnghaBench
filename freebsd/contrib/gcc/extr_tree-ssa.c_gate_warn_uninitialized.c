
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ warn_uninitialized ;

__attribute__((used)) static bool
gate_warn_uninitialized (void)
{
  return warn_uninitialized != 0;
}
