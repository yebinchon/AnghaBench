
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int integer_zerop (scalar_t__) ;

__attribute__((used)) static inline bool
chrec_zerop (tree chrec)
{
  if (chrec == NULL_TREE)
    return 0;

  if (TREE_CODE (chrec) == INTEGER_CST)
    return integer_zerop (chrec);

  return 0;
}
