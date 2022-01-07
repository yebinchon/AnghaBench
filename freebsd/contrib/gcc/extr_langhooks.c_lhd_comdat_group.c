
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ASSEMBLER_NAME (int ) ;
 char const* IDENTIFIER_POINTER (int ) ;

const char *
lhd_comdat_group (tree decl)
{
  return IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
}
