
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_RTX ;
 int SET_DECL_RTL (int ,int ) ;
 char* alloca (scalar_t__) ;
 int change_decl_assembler_name (int ,int ) ;
 int get_identifier (char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
set_user_assembler_name (tree decl, const char *name)
{
  char *starred = alloca (strlen (name) + 2);
  starred[0] = '*';
  strcpy (starred + 1, name);
  change_decl_assembler_name (decl, get_identifier (starred));
  SET_DECL_RTL (decl, NULL_RTX);
}
