
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GET_MODE_SIZE (int ) ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int Pmode ;
 int TYPE_SIZE_UNIT (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build_c_cast (int ,int ) ;
 int build_indirect_ref (int ,char*) ;
 int build_int_cst (int ,int) ;
 int build_pointer_type (int ) ;
 int int_cst_value (int ) ;
 int ptr_type_node ;
 int unsigned_type_node ;

tree
build_indirect_object_id_exp (tree exp)
{
  tree dst_obj;
  int int_size = int_cst_value (TYPE_SIZE_UNIT (unsigned_type_node));
  int offset;




  offset = GET_MODE_SIZE (Pmode) + GET_MODE_SIZE (Pmode)
     + int_size + int_size + GET_MODE_SIZE (Pmode) +
     GET_MODE_SIZE (Pmode);
  dst_obj = build2 (PLUS_EXPR, ptr_type_node, exp,
       build_int_cst (NULL_TREE, offset));


  dst_obj = build_c_cast (build_pointer_type (ptr_type_node), dst_obj);
  dst_obj = build_indirect_ref (dst_obj, "unary *");

  return dst_obj;
}
