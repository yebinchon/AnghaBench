
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_ANTICIPATED (int ) ;
 scalar_t__ DECL_LANG_SPECIFIC (int ) ;
 scalar_t__ DECL_P (int ) ;

bool
hidden_name_p (tree val)
{
  if (DECL_P (val)
      && DECL_LANG_SPECIFIC (val)
      && DECL_ANTICIPATED (val))
    return 1;
  return 0;
}
