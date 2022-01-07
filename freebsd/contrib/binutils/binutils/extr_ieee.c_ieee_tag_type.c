
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int string; } ;
struct ieee_name_type_hash_entry {TYPE_3__ root; struct ieee_name_type* types; } ;
struct TYPE_4__ {void* unsignedp; void* localp; int name; scalar_t__ indx; int size; } ;
struct ieee_name_type {char const* tag; unsigned int id; int kind; TYPE_1__ type; struct ieee_name_type* next; scalar_t__ indx; void* defined; } ;
struct ieee_handle {TYPE_2__* type_stack; scalar_t__ type_indx; int tags; struct ieee_name_type* enums; } ;
struct ieee_defined_enum {char const* tag; unsigned int id; int kind; TYPE_1__ type; struct ieee_defined_enum* next; scalar_t__ indx; void* defined; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef void* bfd_boolean ;
struct TYPE_5__ {TYPE_1__ type; } ;


 int DEBUG_KIND_ENUM ;
 void* FALSE ;
 void* TRUE ;
 int abort () ;
 struct ieee_name_type_hash_entry* ieee_name_type_hash_lookup (int *,char const*,void*,void*) ;
 void* ieee_push_type (struct ieee_handle*,scalar_t__,int ,void*,void*) ;
 int memset (struct ieee_name_type*,int ,int) ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_tag_type (void *p, const char *name, unsigned int id,
        enum debug_type_kind kind)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean localp;
  bfd_boolean copy;
  char ab[20];
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  if (kind == DEBUG_KIND_ENUM)
    {
      struct ieee_defined_enum *e;

      if (name == ((void*)0))
 abort ();
      for (e = info->enums; e != ((void*)0); e = e->next)
 if (e->tag != ((void*)0) && strcmp (e->tag, name) == 0)
   return ieee_push_type (info, e->indx, 0, TRUE, FALSE);

      e = (struct ieee_defined_enum *) xmalloc (sizeof *e);
      memset (e, 0, sizeof *e);

      e->indx = info->type_indx;
      ++info->type_indx;
      e->tag = name;
      e->defined = FALSE;

      e->next = info->enums;
      info->enums = e;

      return ieee_push_type (info, e->indx, 0, TRUE, FALSE);
    }

  localp = FALSE;

  copy = FALSE;
  if (name == ((void*)0))
    {
      sprintf (ab, "__anon%u", id);
      name = ab;
      copy = TRUE;
    }

  h = ieee_name_type_hash_lookup (&info->tags, name, TRUE, copy);
  if (h == ((void*)0))
    return FALSE;

  for (nt = h->types; nt != ((void*)0); nt = nt->next)
    {
      if (nt->id == id)
 {
   if (! ieee_push_type (info, nt->type.indx, nt->type.size,
    nt->type.unsignedp, nt->type.localp))
     return FALSE;

   info->type_stack->type = nt->type;
   return TRUE;
 }

      if (! nt->type.localp)
 {


   localp = TRUE;
 }
    }

  nt = (struct ieee_name_type *) xmalloc (sizeof *nt);
  memset (nt, 0, sizeof *nt);

  nt->id = id;
  nt->type.name = h->root.string;
  nt->type.indx = info->type_indx;
  nt->type.localp = localp;
  ++info->type_indx;
  nt->kind = kind;

  nt->next = h->types;
  h->types = nt;

  if (! ieee_push_type (info, nt->type.indx, 0, FALSE, localp))
    return FALSE;

  info->type_stack->type.name = h->root.string;

  return TRUE;
}
