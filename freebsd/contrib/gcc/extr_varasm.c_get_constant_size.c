
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 int MAX (int ,int ) ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STRING_LENGTH (int ) ;
 int TREE_TYPE (int ) ;
 int int_size_in_bytes (int ) ;

__attribute__((used)) static HOST_WIDE_INT
get_constant_size (tree exp)
{
  HOST_WIDE_INT size;

  size = int_size_in_bytes (TREE_TYPE (exp));
  if (TREE_CODE (exp) == STRING_CST)
    size = MAX (TREE_STRING_LENGTH (exp), size);
  return size;
}
