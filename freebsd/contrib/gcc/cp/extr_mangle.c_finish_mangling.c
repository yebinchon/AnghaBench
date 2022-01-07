
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int substitutions; int entity; scalar_t__ need_abi_warning; } ;


 TYPE_1__ G ;
 int OPT_Wabi ;
 int VEC_truncate (int ,int ,int ) ;
 int mangle_obstack ;
 scalar_t__ obstack_finish (int ) ;
 int tree ;
 scalar_t__ warn_abi ;
 int warning (int ,char*,int ) ;
 int write_char (char) ;

__attribute__((used)) static inline const char *
finish_mangling (const bool warn)
{
  if (warn_abi && warn && G.need_abi_warning)
    warning (OPT_Wabi, "the mangled name of %qD will change in a future "
      "version of GCC",
      G.entity);


  VEC_truncate (tree, G.substitutions, 0);


  write_char ('\0');

  return (const char *) obstack_finish (mangle_obstack);
}
