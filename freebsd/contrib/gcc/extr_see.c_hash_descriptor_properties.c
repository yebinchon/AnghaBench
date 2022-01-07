
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_register_properties {int regno; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
hash_descriptor_properties (const void *p)
{
  const struct see_register_properties *curr_prop = p;
  return curr_prop->regno;
}
