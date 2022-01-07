
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct debug_type_real_list {struct debug_type* t; struct debug_type_real_list* next; } ;
struct TYPE_6__ {TYPE_2__* knamed; TYPE_1__* kindirect; } ;
struct debug_type {int kind; TYPE_3__ u; } ;
typedef struct debug_type* debug_type ;
struct TYPE_5__ {struct debug_type* type; } ;
struct TYPE_4__ {struct debug_type** slot; } ;





 char* _ (char*) ;
 char* debug_get_type_name (void*,struct debug_type*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static struct debug_type *
debug_get_real_type (void *handle, debug_type type,
       struct debug_type_real_list *list)
{
  struct debug_type_real_list *l;
  struct debug_type_real_list rl;

  switch (type->kind)
    {
    default:
      return type;

    case 130:
    case 129:
    case 128:
      break;
    }

  for (l = list; l != ((void*)0); l = l->next)
    {
      if (l->t == type || l == l->next)
 {
   fprintf (stderr,
     _("debug_get_real_type: circular debug information for %s\n"),
     debug_get_type_name (handle, type));
   return ((void*)0);
 }
    }

  rl.next = list;
  rl.t = type;

  switch (type->kind)
    {

    default:
    case 130:
      if (*type->u.kindirect->slot != ((void*)0))
 return debug_get_real_type (handle, *type->u.kindirect->slot, &rl);
      return type;
    case 129:
    case 128:
      return debug_get_real_type (handle, type->u.knamed->type, &rl);
    }

}
