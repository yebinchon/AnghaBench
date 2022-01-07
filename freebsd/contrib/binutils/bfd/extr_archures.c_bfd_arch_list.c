
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_size_type ;
struct TYPE_3__ {char* printable_name; struct TYPE_3__* next; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 TYPE_1__** bfd_archures_list ;
 char** bfd_malloc (int) ;

const char **
bfd_arch_list (void)
{
  int vec_length = 0;
  const char **name_ptr;
  const char **name_list;
  const bfd_arch_info_type * const *app;
  bfd_size_type amt;


  vec_length = 0;
  for (app = bfd_archures_list; *app != ((void*)0); app++)
    {
      const bfd_arch_info_type *ap;
      for (ap = *app; ap != ((void*)0); ap = ap->next)
 {
   vec_length++;
 }
    }

  amt = (vec_length + 1) * sizeof (char **);
  name_list = bfd_malloc (amt);
  if (name_list == ((void*)0))
    return ((void*)0);


  name_ptr = name_list;
  for (app = bfd_archures_list; *app != ((void*)0); app++)
    {
      const bfd_arch_info_type *ap;
      for (ap = *app; ap != ((void*)0); ap = ap->next)
 {
   *name_ptr = ap->printable_name;
   name_ptr++;
 }
    }
  *name_ptr = ((void*)0);

  return name_list;
}
