
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_tag {int kind; int slot; int name; struct stab_tag* next; } ;
struct stab_handle {struct stab_tag* tags; scalar_t__ function_end; scalar_t__ within_function; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;


 int DEBUG_KIND_ILLEGAL ;
 int DEBUG_KIND_STRUCT ;
 int DEBUG_TYPE_NULL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int debug_end_function (void*,scalar_t__) ;
 int debug_make_undefined_tagged_type (void*,int ,int) ;
 int stab_emit_pending_vars (void*,struct stab_handle*) ;

bfd_boolean
finish_stab (void *dhandle, void *handle)
{
  struct stab_handle *info = (struct stab_handle *) handle;
  struct stab_tag *st;

  if (info->within_function)
    {
      if (! stab_emit_pending_vars (dhandle, info)
   || ! debug_end_function (dhandle, info->function_end))
 return FALSE;
      info->within_function = FALSE;
      info->function_end = (bfd_vma) -1;
    }

  for (st = info->tags; st != ((void*)0); st = st->next)
    {
      enum debug_type_kind kind;

      kind = st->kind;
      if (kind == DEBUG_KIND_ILLEGAL)
 kind = DEBUG_KIND_STRUCT;
      st->slot = debug_make_undefined_tagged_type (dhandle, st->name, kind);
      if (st->slot == DEBUG_TYPE_NULL)
 return FALSE;
    }

  return TRUE;
}
