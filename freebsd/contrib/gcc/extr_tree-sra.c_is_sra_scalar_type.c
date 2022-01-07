
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BOOLEAN_TYPE ;
 int ENUMERAL_TYPE ;
 int INTEGER_TYPE ;
 int OFFSET_TYPE ;
 int POINTER_TYPE ;
 int REAL_TYPE ;
 int REFERENCE_TYPE ;
 int TREE_CODE (int ) ;
 int VECTOR_TYPE ;

__attribute__((used)) static bool
is_sra_scalar_type (tree type)
{
  enum tree_code code = TREE_CODE (type);
  return (code == INTEGER_TYPE || code == REAL_TYPE || code == VECTOR_TYPE
   || code == ENUMERAL_TYPE || code == BOOLEAN_TYPE
   || code == POINTER_TYPE || code == OFFSET_TYPE
   || code == REFERENCE_TYPE);
}
