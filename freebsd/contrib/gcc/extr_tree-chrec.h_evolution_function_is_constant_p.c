
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;



 scalar_t__ NULL_TREE ;

 int TREE_CODE (scalar_t__) ;

__attribute__((used)) static inline bool
evolution_function_is_constant_p (tree chrec)
{
  if (chrec == NULL_TREE)
    return 0;

  switch (TREE_CODE (chrec))
    {
    case 129:
    case 128:
      return 1;

    default:
      return 0;
    }
}
