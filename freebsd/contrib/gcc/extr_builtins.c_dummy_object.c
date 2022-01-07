
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INDIRECT_REF ;
 int build1 (int ,int ,int ) ;
 int build_int_cst (int ,int ) ;
 int build_pointer_type (int ) ;

__attribute__((used)) static tree
dummy_object (tree type)
{
  tree t = build_int_cst (build_pointer_type (type), 0);
  return build1 (INDIRECT_REF, type, t);
}
