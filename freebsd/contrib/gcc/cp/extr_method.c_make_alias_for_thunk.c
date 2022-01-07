
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 int assemble_alias (int ,int ) ;
 int flag_syntax_only ;
 int get_identifier (char*) ;
 int make_alias_for (int ,int ) ;
 int thunk_labelno ;

__attribute__((used)) static tree
make_alias_for_thunk (tree function)
{
  tree alias;
  char buf[256];

  ASM_GENERATE_INTERNAL_LABEL (buf, "LTHUNK", thunk_labelno);
  thunk_labelno++;

  alias = make_alias_for (function, get_identifier (buf));

  if (!flag_syntax_only)
    assemble_alias (alias, DECL_ASSEMBLER_NAME (function));

  return alias;
}
