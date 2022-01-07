
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum gt_types_enum { ____Placeholder_gt_types_enum } gt_types_enum ;


 int IDENTIFIER_BUCKET ;
 scalar_t__ IDENTIFIER_NODE ;
 int OTHER_BUCKET ;
 int STRING_BUCKET ;
 scalar_t__ TREE_CODE (int ) ;
 int gt_ggc_e_14lang_tree_node ;
 int gt_types_enum_last ;

__attribute__((used)) static int
pch_bucket (void *x, enum gt_types_enum type,
     bool is_string)
{


  if (type == gt_ggc_e_14lang_tree_node
      && TREE_CODE ((tree) x) == IDENTIFIER_NODE)
    return IDENTIFIER_BUCKET;
  else if (type == gt_types_enum_last)
    {
      if (is_string)
 return STRING_BUCKET;
      return OTHER_BUCKET;
    }
  return type;
}
