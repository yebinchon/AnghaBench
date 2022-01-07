
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ DECL_DECLARED_INLINE_P (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 int flag_really_no_inline ;
 int * lookup_attribute (char*,int ) ;

int
c_disregard_inline_limits (tree fn)
{
  if (lookup_attribute ("always_inline", DECL_ATTRIBUTES (fn)) != ((void*)0))
    return 1;

  return (!flag_really_no_inline && DECL_DECLARED_INLINE_P (fn)
   && DECL_EXTERNAL (fn));
}
