
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int tag_scope ;
typedef enum tag_types { ____Placeholder_tag_types } tag_types ;


 scalar_t__ CLASSTYPE_DECLARED_CLASS (int ) ;
 int NULL_TREE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_IDENTIFIER (int ) ;
 int class_type ;
 int record_type ;
 int union_type ;
 int xref_tag (int,int ,int ,int) ;

tree
xref_tag_from_type (tree old, tree id, tag_scope scope)
{
  enum tag_types tag_kind;

  if (TREE_CODE (old) == RECORD_TYPE)
    tag_kind = (CLASSTYPE_DECLARED_CLASS (old) ? class_type : record_type);
  else
    tag_kind = union_type;

  if (id == NULL_TREE)
    id = TYPE_IDENTIFIER (old);

  return xref_tag (tag_kind, id, scope, 0);
}
