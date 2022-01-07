
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_register_properties {int dummy; } ;


 int free (struct see_register_properties*) ;

__attribute__((used)) static void
hash_del_properties (void *p)
{
  struct see_register_properties *curr_prop = p;
  free (curr_prop);
}
