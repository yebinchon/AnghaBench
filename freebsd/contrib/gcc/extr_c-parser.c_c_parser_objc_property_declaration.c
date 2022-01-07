
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_parser ;


 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int RID_AT_PROPERTY ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ c_parser_component_decl (int *) ;
 int c_parser_objc_property_attr_decl (int *) ;
 int c_parser_require_keyword (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int copy_node (scalar_t__) ;
 scalar_t__ nreverse (scalar_t__) ;
 int objc_add_property_variable (int ) ;
 int objc_property_attr_context ;
 int objc_set_property_attr (int ,int ) ;

__attribute__((used)) static void
c_parser_objc_property_declaration (c_parser *parser)
{
  tree prop;
  c_parser_require_keyword (parser, RID_AT_PROPERTY, "expected %<@property%>");
  objc_property_attr_context = 1;
  objc_set_property_attr (0, NULL_TREE);
  c_parser_objc_property_attr_decl (parser);
  objc_property_attr_context = 0;
  prop = c_parser_component_decl (parser);


  prop = nreverse (prop);

  for (; prop; prop = TREE_CHAIN (prop))
    objc_add_property_variable (copy_node (prop));
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
}
