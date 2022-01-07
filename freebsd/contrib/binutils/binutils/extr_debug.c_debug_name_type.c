
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct debug_named_type* knamed; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_named_type {struct debug_name* name; struct debug_type* type; } ;
struct TYPE_6__ {struct debug_type* type; } ;
struct debug_name {TYPE_3__ u; } ;
struct debug_handle {TYPE_2__* current_file; int * current_unit; } ;
typedef struct debug_type* debug_type ;
struct TYPE_5__ {int globals; } ;


 int DEBUG_KIND_NAMED ;
 int DEBUG_LINKAGE_NONE ;
 int DEBUG_OBJECT_TYPE ;
 struct debug_type* DEBUG_TYPE_NULL ;
 int _ (char*) ;
 struct debug_name* debug_add_to_namespace (struct debug_handle*,int *,char const*,int ,int ) ;
 int debug_error (int ) ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_named_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_name_type (void *handle, const char *name, debug_type type)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_named_type *n;
  struct debug_name *nm;

  if (name == ((void*)0) || type == ((void*)0))
    return DEBUG_TYPE_NULL;

  if (info->current_unit == ((void*)0)
      || info->current_file == ((void*)0))
    {
      debug_error (_("debug_name_type: no current file"));
      return DEBUG_TYPE_NULL;
    }

  t = debug_make_type (info, DEBUG_KIND_NAMED, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  n = (struct debug_named_type *) xmalloc (sizeof *n);
  memset (n, 0, sizeof *n);

  n->type = type;

  t->u.knamed = n;




  nm = debug_add_to_namespace (info, &info->current_file->globals, name,
          DEBUG_OBJECT_TYPE, DEBUG_LINKAGE_NONE);
  if (nm == ((void*)0))
    return DEBUG_TYPE_NULL;

  nm->u.type = t;

  n->name = nm;

  return t;
}
