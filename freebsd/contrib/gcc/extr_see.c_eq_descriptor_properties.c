
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_register_properties {scalar_t__ regno; } ;



__attribute__((used)) static int
eq_descriptor_properties (const void *p1, const void *p2)
{
  const struct see_register_properties *curr_prop1 = p1;
  const struct see_register_properties *curr_prop2 = p2;

  return curr_prop1->regno == curr_prop2->regno;
}
