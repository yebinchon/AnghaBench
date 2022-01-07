
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct c_type_name {TYPE_1__* specs; int declarator; } ;
struct TYPE_2__ {int attrs; } ;


 int NULL_TREE ;
 int TYPENAME ;
 int decl_attributes (int *,int ,int ) ;
 int grokdeclarator (int ,TYPE_1__*,int ,int,int *) ;

tree
groktypename (struct c_type_name *type_name)
{
  tree type;
  tree attrs = type_name->specs->attrs;

  type_name->specs->attrs = NULL_TREE;

  type = grokdeclarator (type_name->declarator, type_name->specs, TYPENAME,
    0, ((void*)0));


  decl_attributes (&type, attrs, 0);

  return type;
}
