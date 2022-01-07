
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VOID_TYPE_P (int ) ;
 int complete_type_or_else (int ,int ) ;

__attribute__((used)) static int
complete_ptr_ref_or_void_ptr_p (tree type, tree from)
{
  int is_ptr;


  type = complete_type_or_else (type, from);
  if (!type)
    return 0;


  is_ptr = TREE_CODE (type) == POINTER_TYPE;
  if (is_ptr || TREE_CODE (type) == REFERENCE_TYPE)
    {
      tree core = TREE_TYPE (type);

      if (is_ptr && VOID_TYPE_P (core))
         ;
      else if (!complete_type_or_else (core, from))
 return 0;
    }
  return 1;
}
