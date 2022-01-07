
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct debug_namespace {int dummy; } ;
struct debug_name {int dummy; } ;
struct debug_handle {TYPE_1__* current_file; TYPE_2__* current_block; int * current_unit; } ;
typedef enum debug_object_linkage { ____Placeholder_debug_object_linkage } debug_object_linkage ;
typedef enum debug_object_kind { ____Placeholder_debug_object_kind } debug_object_kind ;
struct TYPE_4__ {struct debug_namespace* locals; } ;
struct TYPE_3__ {struct debug_namespace* globals; } ;


 int _ (char*) ;
 struct debug_name* debug_add_to_namespace (struct debug_handle*,struct debug_namespace**,char const*,int,int) ;
 int debug_error (int ) ;

__attribute__((used)) static struct debug_name *
debug_add_to_current_namespace (struct debug_handle *info, const char *name,
    enum debug_object_kind kind,
    enum debug_object_linkage linkage)
{
  struct debug_namespace **nsp;

  if (info->current_unit == ((void*)0)
      || info->current_file == ((void*)0))
    {
      debug_error (_("debug_add_to_current_namespace: no current file"));
      return ((void*)0);
    }

  if (info->current_block != ((void*)0))
    nsp = &info->current_block->locals;
  else
    nsp = &info->current_file->globals;

  return debug_add_to_namespace (info, nsp, name, kind, linkage);
}
