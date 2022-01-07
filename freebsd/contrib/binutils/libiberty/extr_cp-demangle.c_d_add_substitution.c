
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {size_t next_sub; size_t num_subs; struct demangle_component** subs; } ;



__attribute__((used)) static int
d_add_substitution (struct d_info *di, struct demangle_component *dc)
{
  if (dc == ((void*)0))
    return 0;
  if (di->next_sub >= di->num_subs)
    return 0;
  di->subs[di->next_sub] = dc;
  ++di->next_sub;
  return 1;
}
