
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SPCT_FLAG_ALL ;
 scalar_t__ SPCT_FLAG_STRONG ;
 unsigned int SPCT_HAS_AGGREGATE ;
 unsigned int SPCT_HAS_ARRAY ;
 unsigned int SPCT_HAS_LARGE_CHAR_ARRAY ;
 unsigned int SPCT_HAS_SMALL_CHAR_ARRAY ;
 int TREE_TYPE (int ) ;
 scalar_t__ flag_stack_protect ;
 int has_protected_decls ;
 int has_short_buffer ;
 unsigned int stack_protect_classify_type (int ) ;

__attribute__((used)) static int
stack_protect_decl_phase (tree decl)
{
  unsigned int bits = stack_protect_classify_type (TREE_TYPE (decl));
  int ret = 0;

  if (bits & SPCT_HAS_SMALL_CHAR_ARRAY)
    has_short_buffer = 1;

  if (flag_stack_protect == SPCT_FLAG_ALL
      || flag_stack_protect == SPCT_FLAG_STRONG)
    {
      if ((bits & (SPCT_HAS_SMALL_CHAR_ARRAY | SPCT_HAS_LARGE_CHAR_ARRAY))
   && !(bits & SPCT_HAS_AGGREGATE))
 ret = 1;
      else if (bits & SPCT_HAS_ARRAY)
 ret = 2;
    }
  else
    ret = (bits & SPCT_HAS_LARGE_CHAR_ARRAY) != 0;

  if (ret)
    has_protected_decls = 1;

  return ret;
}
