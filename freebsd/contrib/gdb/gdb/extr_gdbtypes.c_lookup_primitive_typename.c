
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct TYPE_2__ {struct type*** la_builtin_type_vector; } ;


 int TYPE_NAME (struct type*) ;
 TYPE_1__* current_language ;
 scalar_t__ strcmp (int ,char*) ;

struct type *
lookup_primitive_typename (char *name)
{
  struct type **const *p;

  for (p = current_language->la_builtin_type_vector; *p != ((void*)0); p++)
    {
      if (strcmp (TYPE_NAME (**p), name) == 0)
 {
   return (**p);
 }
    }
  return (((void*)0));
}
