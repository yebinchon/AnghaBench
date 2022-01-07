
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_type {int dummy; } ;
struct debug_handle {int dummy; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef int debug_type ;







 int DEBUG_TYPE_NULL ;
 int _ (char*) ;
 int debug_error (int ) ;
 struct debug_type* debug_make_type (struct debug_handle*,int,int ) ;
 int debug_tag_type (void*,char const*,struct debug_type*) ;

debug_type
debug_make_undefined_tagged_type (void *handle, const char *name,
      enum debug_type_kind kind)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;

  if (name == ((void*)0))
    return DEBUG_TYPE_NULL;

  switch (kind)
    {
    case 130:
    case 129:
    case 132:
    case 128:
    case 131:
      break;

    default:
      debug_error (_("debug_make_undefined_type: unsupported kind"));
      return DEBUG_TYPE_NULL;
    }

  t = debug_make_type (info, kind, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  return debug_tag_type (handle, name, t);
}
