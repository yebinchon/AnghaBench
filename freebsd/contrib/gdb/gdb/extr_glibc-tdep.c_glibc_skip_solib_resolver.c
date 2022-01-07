
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* find_minsym_and_objfile (char*,struct objfile**) ;
 scalar_t__ frame_pc_unwind (int ) ;
 int get_current_frame () ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,struct objfile*) ;

CORE_ADDR
glibc_skip_solib_resolver (struct gdbarch *gdbarch, CORE_ADDR pc)
{
  struct objfile *objfile;
  struct minimal_symbol *resolver
    = find_minsym_and_objfile ("_dl_runtime_resolve", &objfile);

  if (resolver)
    {
      struct minimal_symbol *fixup
 = lookup_minimal_symbol ("fixup", ((void*)0), objfile);

      if (fixup && SYMBOL_VALUE_ADDRESS (fixup) == pc)
 return frame_pc_unwind (get_current_frame ());
    }

  return 0;
}
