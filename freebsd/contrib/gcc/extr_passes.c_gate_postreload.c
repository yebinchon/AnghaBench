
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reload_completed ;

__attribute__((used)) static bool
gate_postreload (void)
{
  return reload_completed;
}
