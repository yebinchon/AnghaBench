
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_class_type* kclass; } ;
struct debug_type {scalar_t__ kind; TYPE_1__ u; } ;
struct debug_handle {scalar_t__ base_id; scalar_t__ class_id; struct debug_class_id* id_list; } ;
struct debug_class_type {scalar_t__ id; } ;
struct debug_class_id {char const* tag; struct debug_class_id* next; struct debug_type* type; } ;
typedef int bfd_boolean ;


 scalar_t__ DEBUG_KIND_CLASS ;
 scalar_t__ DEBUG_KIND_STRUCT ;
 scalar_t__ DEBUG_KIND_UNION ;
 scalar_t__ DEBUG_KIND_UNION_CLASS ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ debug_type_samep (struct debug_handle*,struct debug_type*,struct debug_type*) ;
 int memset (struct debug_class_id*,int ,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
debug_set_class_id (struct debug_handle *info, const char *tag,
      struct debug_type *type)
{
  struct debug_class_type *c;
  struct debug_class_id *l;

  assert (type->kind == DEBUG_KIND_STRUCT
   || type->kind == DEBUG_KIND_UNION
   || type->kind == DEBUG_KIND_CLASS
   || type->kind == DEBUG_KIND_UNION_CLASS);

  c = type->u.kclass;

  if (c->id > info->base_id)
    return TRUE;

  for (l = info->id_list; l != ((void*)0); l = l->next)
    {
      if (l->type->kind != type->kind)
 continue;

      if (tag == ((void*)0))
 {
   if (l->tag != ((void*)0))
     continue;
 }
      else
 {
   if (l->tag == ((void*)0)
       || l->tag[0] != tag[0]
       || strcmp (l->tag, tag) != 0)
     continue;
 }

      if (debug_type_samep (info, l->type, type))
 {
   c->id = l->type->u.kclass->id;
   return TRUE;
 }
    }



  ++info->class_id;
  c->id = info->class_id;

  l = (struct debug_class_id *) xmalloc (sizeof *l);
  memset (l, 0, sizeof *l);

  l->type = type;
  l->tag = tag;

  l->next = info->id_list;
  info->id_list = l;

  return TRUE;
}
