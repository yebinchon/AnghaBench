
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ (* builtin_function ) (char const*,int ,int,int ,int *,int ) ;} ;


 int BUILT_IN_MD ;
 int NULL_TREE ;
 int abort () ;
 TYPE_1__ lang_hooks ;
 scalar_t__* rs6000_builtin_decls ;
 scalar_t__ stub1 (char const*,int ,int,int ,int *,int ) ;
 int target_flags ;

__attribute__((used)) static void
def_builtin (int mask, const char *name, tree type, int code)
{
  if (mask & target_flags)
    {
      if (rs6000_builtin_decls[code])
 abort ();

      rs6000_builtin_decls[code] =
        lang_hooks.builtin_function (name, type, code, BUILT_IN_MD,
         ((void*)0), NULL_TREE);
    }
}
