
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {char* (* strip_name_encoding ) (char const*) ;} ;
typedef int FILE ;


 char* IDENTIFIER_POINTER (scalar_t__) ;
 int TREE_CHAIN (scalar_t__) ;
 int assemble_name_raw (int *,char const*) ;
 int gcc_assert (int) ;
 int mark_referenced (scalar_t__) ;
 scalar_t__ maybe_get_identifier (char const*) ;
 char* stub1 (char const*) ;
 TYPE_1__ targetm ;
 int ultimate_transparent_alias_target (scalar_t__*) ;

void
assemble_name (FILE *file, const char *name)
{
  const char *real_name;
  tree id;

  real_name = targetm.strip_name_encoding (name);

  id = maybe_get_identifier (real_name);
  if (id)
    {
      tree id_orig = id;

      mark_referenced (id);
      ultimate_transparent_alias_target (&id);
      if (id != id_orig)
 name = IDENTIFIER_POINTER (id);
      gcc_assert (! TREE_CHAIN (id));
    }

  assemble_name_raw (file, name);
}
