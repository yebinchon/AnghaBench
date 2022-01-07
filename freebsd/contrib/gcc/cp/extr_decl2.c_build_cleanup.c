
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 scalar_t__ ARRAY_TYPE ;
 int LOOKUP_DESTRUCTOR ;
 int LOOKUP_NONVIRTUAL ;
 int LOOKUP_NORMAL ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_HAS_TRIVIAL_DESTRUCTOR (int ) ;
 int build1 (int ,int ,int ) ;
 int build_delete (int ,int ,int ,int,int ) ;
 int build_pointer_type (int ) ;
 int cxx_mark_addressable (int ) ;
 int gcc_assert (int) ;
 int mark_used (int ) ;
 int sfk_complete_destructor ;

tree
build_cleanup (tree decl)
{
  tree temp;
  tree type = TREE_TYPE (decl);



  gcc_assert (!TYPE_HAS_TRIVIAL_DESTRUCTOR (type));



  mark_used (decl);

  if (TREE_CODE (type) == ARRAY_TYPE)
    temp = decl;
  else
    {
      cxx_mark_addressable (decl);
      temp = build1 (ADDR_EXPR, build_pointer_type (type), decl);
    }
  temp = build_delete (TREE_TYPE (temp), temp,
         sfk_complete_destructor,
         LOOKUP_NORMAL|LOOKUP_NONVIRTUAL|LOOKUP_DESTRUCTOR, 0);
  return temp;
}
