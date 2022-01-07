
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_parameter {char const* name; int kind; struct debug_parameter* next; int val; int * type; } ;
struct debug_handle {TYPE_1__* current_function; int * current_unit; } ;
typedef enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef int * debug_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {struct debug_parameter* parameters; } ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;
 int memset (struct debug_parameter*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_record_parameter (void *handle, const char *name, debug_type type,
   enum debug_parm_kind kind, bfd_vma val)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_parameter *p, **pp;

  if (name == ((void*)0) || type == ((void*)0))
    return FALSE;

  if (info->current_unit == ((void*)0)
      || info->current_function == ((void*)0))
    {
      debug_error (_("debug_record_parameter: no current function"));
      return FALSE;
    }

  p = (struct debug_parameter *) xmalloc (sizeof *p);
  memset (p, 0, sizeof *p);

  p->name = name;
  p->type = type;
  p->kind = kind;
  p->val = val;

  for (pp = &info->current_function->parameters;
       *pp != ((void*)0);
       pp = &(*pp)->next)
    ;
  *pp = p;

  return TRUE;
}
