
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
struct debug_name {scalar_t__ kind; char const* name; TYPE_4__ u; struct debug_name* next; } ;
struct debug_handle {TYPE_2__* current_unit; struct debug_block* current_block; } ;
struct debug_file {TYPE_3__* globals; struct debug_file* next; } ;
struct debug_block {TYPE_1__* locals; struct debug_block* parent; } ;
typedef int debug_type ;
struct TYPE_7__ {struct debug_name* list; } ;
struct TYPE_6__ {struct debug_file* files; } ;
struct TYPE_5__ {struct debug_name* list; } ;


 scalar_t__ DEBUG_OBJECT_TYPE ;
 int DEBUG_TYPE_NULL ;
 int _ (char*) ;
 int debug_error (int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

debug_type
debug_find_named_type (void *handle, const char *name)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_block *b;
  struct debug_file *f;




  if (info->current_unit == ((void*)0))
    {
      debug_error (_("debug_find_named_type: no current compilation unit"));
      return DEBUG_TYPE_NULL;
    }

  for (b = info->current_block; b != ((void*)0); b = b->parent)
    {
      if (b->locals != ((void*)0))
 {
   struct debug_name *n;

   for (n = b->locals->list; n != ((void*)0); n = n->next)
     {
       if (n->kind == DEBUG_OBJECT_TYPE
    && n->name[0] == name[0]
    && strcmp (n->name, name) == 0)
  return n->u.type;
     }
 }
    }

  for (f = info->current_unit->files; f != ((void*)0); f = f->next)
    {
      if (f->globals != ((void*)0))
 {
   struct debug_name *n;

   for (n = f->globals->list; n != ((void*)0); n = n->next)
     {
       if (n->kind == DEBUG_OBJECT_TYPE
    && n->name[0] == name[0]
    && strcmp (n->name, name) == 0)
  return n->u.type;
     }
 }
    }

  return DEBUG_TYPE_NULL;
}
