
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_target ;


 int ** bfd_target_vector ;

const bfd_target *
bfd_search_for_target (int (*search_func) (const bfd_target *, void *),
         void *data)
{
  const bfd_target * const *target;

  for (target = bfd_target_vector; *target != ((void*)0); target ++)
    if (search_func (*target, data))
      return *target;

  return ((void*)0);
}
