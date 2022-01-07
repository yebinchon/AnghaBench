
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int section ;
struct TYPE_2__ {unsigned int (* section_type_flags ) (int ,char const*,int) ;} ;


 scalar_t__ DECL_P (int ) ;
 int DECL_SECTION_NAME (int ) ;
 char* TREE_STRING_POINTER (int ) ;
 int gcc_assert (int) ;
 int * get_section (char const*,unsigned int,int ) ;
 unsigned int stub1 (int ,char const*,int) ;
 TYPE_1__ targetm ;

section *
get_named_section (tree decl, const char *name, int reloc)
{
  unsigned int flags;

  gcc_assert (!decl || DECL_P (decl));
  if (name == ((void*)0))
    name = TREE_STRING_POINTER (DECL_SECTION_NAME (decl));

  flags = targetm.section_type_flags (decl, name, reloc);

  return get_section (name, flags, decl);
}
