
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_EXTERN_C_P (int ) ;

bool
has_c_linkage (tree decl)
{
  return DECL_EXTERN_C_P (decl);
}
