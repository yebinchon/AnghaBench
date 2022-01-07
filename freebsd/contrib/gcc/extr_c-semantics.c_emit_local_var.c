
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_HARD_REGISTER (int ) ;
 int DECL_RTL_SET_P (int ) ;
 int expand_decl (int ) ;
 int rest_of_decl_compilation (int ,int ,int ) ;

void
emit_local_var (tree decl)
{

  if (!DECL_RTL_SET_P (decl))
    {
      if (DECL_HARD_REGISTER (decl))


 rest_of_decl_compilation (decl, 0, 0);
      else
 expand_decl (decl);
    }
}
