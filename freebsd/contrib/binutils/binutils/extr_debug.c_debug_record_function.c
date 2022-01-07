
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct debug_function* function; } ;
struct debug_name {TYPE_2__ u; } ;
struct debug_handle {TYPE_1__* current_file; struct debug_function* current_block; struct debug_function* current_function; int * current_unit; } ;
struct debug_function {struct debug_function* blocks; void* end; void* start; int * return_type; } ;
struct debug_block {struct debug_block* blocks; void* end; void* start; int * return_type; } ;
typedef int * debug_type ;
typedef void* bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {int globals; } ;


 int DEBUG_LINKAGE_GLOBAL ;
 int DEBUG_LINKAGE_STATIC ;
 int DEBUG_OBJECT_FUNCTION ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 struct debug_name* debug_add_to_namespace (struct debug_handle*,int *,char const*,int ,int ) ;
 int debug_error (int ) ;
 int memset (struct debug_function*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_record_function (void *handle, const char *name,
         debug_type return_type, bfd_boolean global,
         bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_function *f;
  struct debug_block *b;
  struct debug_name *n;

  if (name == ((void*)0))
    name = "";
  if (return_type == ((void*)0))
    return FALSE;

  if (info->current_unit == ((void*)0))
    {
      debug_error (_("debug_record_function: no debug_set_filename call"));
      return FALSE;
    }

  f = (struct debug_function *) xmalloc (sizeof *f);
  memset (f, 0, sizeof *f);

  f->return_type = return_type;

  b = (struct debug_block *) xmalloc (sizeof *b);
  memset (b, 0, sizeof *b);

  b->start = addr;
  b->end = (bfd_vma) -1;

  f->blocks = b;

  info->current_function = f;
  info->current_block = b;



  n = debug_add_to_namespace (info,
         &info->current_file->globals,
         name,
         DEBUG_OBJECT_FUNCTION,
         (global
          ? DEBUG_LINKAGE_GLOBAL
          : DEBUG_LINKAGE_STATIC));
  if (n == ((void*)0))
    return FALSE;

  n->u.function = f;

  return TRUE;
}
