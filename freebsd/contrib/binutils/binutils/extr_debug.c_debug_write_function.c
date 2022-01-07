
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_write_fns {int (* end_function ) (void*) ;int (* function_parameter ) (void*,int ,int ,int ) ;int (* start_function ) (void*,char const*,int) ;} ;
struct debug_parameter {int val; int kind; int name; int type; struct debug_parameter* next; } ;
struct debug_name {int dummy; } ;
struct debug_handle {int dummy; } ;
struct debug_function {struct debug_block* blocks; struct debug_parameter* parameters; int return_type; } ;
struct debug_block {struct debug_block* next; int start; } ;
typedef enum debug_object_linkage { ____Placeholder_debug_object_linkage } debug_object_linkage ;
typedef int bfd_boolean ;


 int DEBUG_LINKAGE_GLOBAL ;
 int FALSE ;
 int debug_write_block (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_block*) ;
 int debug_write_linenos (struct debug_handle*,struct debug_write_fns const*,void*,int ) ;
 int debug_write_type (struct debug_handle*,struct debug_write_fns const*,void*,int ,struct debug_name*) ;
 int stub1 (void*,char const*,int) ;
 int stub2 (void*,int ,int ,int ) ;
 int stub3 (void*) ;

__attribute__((used)) static bfd_boolean
debug_write_function (struct debug_handle *info,
        const struct debug_write_fns *fns, void *fhandle,
        const char *name, enum debug_object_linkage linkage,
        struct debug_function *function)
{
  struct debug_parameter *p;
  struct debug_block *b;

  if (! debug_write_linenos (info, fns, fhandle, function->blocks->start))
    return FALSE;

  if (! debug_write_type (info, fns, fhandle, function->return_type,
     (struct debug_name *) ((void*)0)))
    return FALSE;

  if (! (*fns->start_function) (fhandle, name,
    linkage == DEBUG_LINKAGE_GLOBAL))
    return FALSE;

  for (p = function->parameters; p != ((void*)0); p = p->next)
    {
      if (! debug_write_type (info, fns, fhandle, p->type,
         (struct debug_name *) ((void*)0))
   || ! (*fns->function_parameter) (fhandle, p->name, p->kind, p->val))
 return FALSE;
    }

  for (b = function->blocks; b != ((void*)0); b = b->next)
    {
      if (! debug_write_block (info, fns, fhandle, b))
 return FALSE;
    }

  return (*fns->end_function) (fhandle);
}
