
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {char const* (* decl_printable_name ) (int ,int) ;} ;


 int DECL_P (int ) ;
 int gcc_assert (int ) ;
 TYPE_1__ lang_hooks ;
 char const* stub1 (int ,int) ;

const char *
lhd_dwarf_name (tree t, int verbosity)
{
  gcc_assert (DECL_P (t));

  return lang_hooks.decl_printable_name (t, verbosity);
}
