
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct debug_unit {struct debug_file* files; struct debug_unit* next; } ;
struct TYPE_7__ {TYPE_3__* tag; } ;
struct debug_name {scalar_t__ kind; char const* name; TYPE_2__ u; struct debug_name* next; } ;
struct debug_handle {struct debug_unit* units; } ;
struct debug_file {TYPE_1__* globals; struct debug_file* next; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef TYPE_3__* debug_type ;
struct TYPE_8__ {int kind; } ;
struct TYPE_6__ {struct debug_name* list; } ;


 int DEBUG_KIND_ILLEGAL ;
 scalar_t__ DEBUG_OBJECT_TAG ;
 TYPE_3__* DEBUG_TYPE_NULL ;
 scalar_t__ strcmp (char const*,char const*) ;

debug_type
debug_find_tagged_type (void *handle, const char *name,
   enum debug_type_kind kind)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_unit *u;




  for (u = info->units; u != ((void*)0); u = u->next)
    {
      struct debug_file *f;

      for (f = u->files; f != ((void*)0); f = f->next)
 {
   struct debug_name *n;

   if (f->globals != ((void*)0))
     {
       for (n = f->globals->list; n != ((void*)0); n = n->next)
  {
    if (n->kind == DEBUG_OBJECT_TAG
        && (kind == DEBUG_KIND_ILLEGAL
     || n->u.tag->kind == kind)
        && n->name[0] == name[0]
        && strcmp (n->name, name) == 0)
      return n->u.tag;
  }
     }
 }
    }

  return DEBUG_TYPE_NULL;
}
