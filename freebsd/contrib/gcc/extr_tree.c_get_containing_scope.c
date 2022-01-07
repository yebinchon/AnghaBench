
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CONTEXT (int ) ;
 int TYPE_CONTEXT (int ) ;
 scalar_t__ TYPE_P (int ) ;

tree
get_containing_scope (tree t)
{
  return (TYPE_P (t) ? TYPE_CONTEXT (t) : DECL_CONTEXT (t));
}
