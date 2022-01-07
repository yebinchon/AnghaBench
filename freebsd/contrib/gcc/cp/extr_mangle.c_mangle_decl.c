
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int SET_DECL_ASSEMBLER_NAME (int const,int ) ;
 int get_identifier_nocopy (int ) ;
 int mangle_decl_string (int const) ;

void
mangle_decl (const tree decl)
{
  SET_DECL_ASSEMBLER_NAME (decl,
      get_identifier_nocopy (mangle_decl_string (decl)));
}
