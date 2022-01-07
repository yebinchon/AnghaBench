
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int spec; } ;


 TYPE_1__ parser_xref_tag (int,int ) ;

tree
xref_tag (enum tree_code code, tree name)
{
  return parser_xref_tag (code, name).spec;
}
