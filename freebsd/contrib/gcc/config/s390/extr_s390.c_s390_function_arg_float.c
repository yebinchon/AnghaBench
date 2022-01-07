
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DDmode ;
 int DFmode ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ RECORD_TYPE ;
 int SDmode ;
 int SFmode ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int s390_function_arg_size (int,scalar_t__) ;

__attribute__((used)) static bool
s390_function_arg_float (enum machine_mode mode, tree type)
{
  int size = s390_function_arg_size (mode, type);
  if (size > 8)
    return 0;


  if (TARGET_SOFT_FLOAT)
    return 0;


  if (!type)
    return mode == SFmode || mode == DFmode || mode == SDmode || mode == DDmode;



  while (TREE_CODE (type) == RECORD_TYPE)
    {
      tree field, single = NULL_TREE;

      for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
 {
   if (TREE_CODE (field) != FIELD_DECL)
     continue;

   if (single == NULL_TREE)
     single = TREE_TYPE (field);
   else
     return 0;
 }

      if (single == NULL_TREE)
 return 0;
      else
 type = single;
    }

  return TREE_CODE (type) == REAL_TYPE;
}
