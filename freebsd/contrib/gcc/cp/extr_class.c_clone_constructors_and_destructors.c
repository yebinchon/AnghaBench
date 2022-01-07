
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_CONSTRUCTORS (scalar_t__) ;
 scalar_t__ CLASSTYPE_DESTRUCTORS (scalar_t__) ;
 int CLASSTYPE_METHOD_VEC (scalar_t__) ;
 int OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 int clone_function_decl (int ,int) ;

__attribute__((used)) static void
clone_constructors_and_destructors (tree t)
{
  tree fns;



  if (!CLASSTYPE_METHOD_VEC (t))
    return;

  for (fns = CLASSTYPE_CONSTRUCTORS (t); fns; fns = OVL_NEXT (fns))
    clone_function_decl (OVL_CURRENT (fns), 1);
  for (fns = CLASSTYPE_DESTRUCTORS (t); fns; fns = OVL_NEXT (fns))
    clone_function_decl (OVL_CURRENT (fns), 1);
}
