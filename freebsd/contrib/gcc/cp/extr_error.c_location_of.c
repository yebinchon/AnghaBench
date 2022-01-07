
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int location_t ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 int DECL_SOURCE_LOCATION (scalar_t__) ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_FUNCTION (scalar_t__) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_DECL (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;

__attribute__((used)) static location_t
location_of (tree t)
{
  if (TREE_CODE (t) == PARM_DECL && DECL_CONTEXT (t))
    t = DECL_CONTEXT (t);
  else if (TYPE_P (t))
    t = TYPE_MAIN_DECL (t);
  else if (TREE_CODE (t) == OVERLOAD)
    t = OVL_FUNCTION (t);

  return DECL_SOURCE_LOCATION (t);
}
