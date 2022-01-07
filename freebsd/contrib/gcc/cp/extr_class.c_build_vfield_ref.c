
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_PRIMARY_BINFO (int ) ;
 int COMPONENT_REF ;
 int DECL_CONTEXT (int ) ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_VFIELD (int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_simple_base_path (int ,int ) ;
 int convert_to_base (int ,int ,int,int) ;
 int error_mark_node ;
 int same_type_ignoring_top_level_qualifiers_p (int ,int ) ;

tree
build_vfield_ref (tree datum, tree type)
{
  tree vfield, vcontext;

  if (datum == error_mark_node)
    return error_mark_node;


  if (!same_type_ignoring_top_level_qualifiers_p (TREE_TYPE (datum), type))
    datum = convert_to_base (datum, type, 0,
                    1);







  vfield = TYPE_VFIELD (type);
  vcontext = DECL_CONTEXT (vfield);
  while (!same_type_ignoring_top_level_qualifiers_p (vcontext, type))
    {
      datum = build_simple_base_path (datum, CLASSTYPE_PRIMARY_BINFO (type));
      type = TREE_TYPE (datum);
    }

  return build3 (COMPONENT_REF, TREE_TYPE (vfield), datum, vfield, NULL_TREE);
}
