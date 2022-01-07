
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct builtin_description {int code; int mask; } ;
typedef enum rs6000_builtins { ____Placeholder_rs6000_builtins } rs6000_builtins ;


 int target_flags ;

__attribute__((used)) static void
enable_mask_for_builtins (struct builtin_description *desc, int size,
     enum rs6000_builtins start,
     enum rs6000_builtins end)
{
  int i;

  for (i = 0; i < size; ++i)
    if (desc[i].code == start)
      break;

  if (i == size)
    return;

  for (; i < size; ++i)
    {

      desc[i].mask = target_flags;
      if (desc[i].code == end)
 break;
    }
}
