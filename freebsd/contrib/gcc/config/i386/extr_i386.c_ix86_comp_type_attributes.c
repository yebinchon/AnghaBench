
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ TARGET_RTD ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 scalar_t__ ix86_function_regparm (int ,int *) ;
 int lookup_attribute (char const* const,int ) ;

__attribute__((used)) static int
ix86_comp_type_attributes (tree type1, tree type2)
{

  const char *const rtdstr = TARGET_RTD ? "cdecl" : "stdcall";

  if (TREE_CODE (type1) != FUNCTION_TYPE)
    return 1;


  if ((!lookup_attribute ("fastcall", TYPE_ATTRIBUTES (type1))
       != !lookup_attribute ("fastcall", TYPE_ATTRIBUTES (type2)))
      || (ix86_function_regparm (type1, ((void*)0))
   != ix86_function_regparm (type2, ((void*)0))))
    return 0;


  if (!lookup_attribute ("sseregparm", TYPE_ATTRIBUTES (type1))
      != !lookup_attribute ("sseregparm", TYPE_ATTRIBUTES (type2)))
    return 0;


  if (!lookup_attribute (rtdstr, TYPE_ATTRIBUTES (type1))
      != !lookup_attribute (rtdstr, TYPE_ATTRIBUTES (type2)))
    return 0;

  return 1;
}
