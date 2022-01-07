
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct using_direct {int outer; int inner; struct using_direct* next; } ;


 struct using_direct* cp_add_using (char const*,unsigned int,unsigned int,struct using_direct*) ;
 unsigned int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,unsigned int) ;
 struct using_direct* using_list ;

void
cp_add_using_directive (const char *name, unsigned int outer_length,
   unsigned int inner_length)
{
  struct using_direct *current;
  struct using_direct *new;



  for (current = using_list; current != ((void*)0); current = current->next)
    {
      if ((strncmp (current->inner, name, inner_length) == 0)
   && (strlen (current->inner) == inner_length)
   && (strlen (current->outer) == outer_length))
 return;
    }

  using_list = cp_add_using (name, inner_length, outer_length,
        using_list);
}
