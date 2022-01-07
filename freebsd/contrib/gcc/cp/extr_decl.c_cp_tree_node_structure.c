
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union lang_tree_node {int generic; } ;
typedef enum cp_tree_node_structure_enum { ____Placeholder_cp_tree_node_structure_enum } cp_tree_node_structure_enum ;
 int TREE_CODE (int *) ;
 int TS_CP_BASELINK ;
 int TS_CP_DEFAULT_ARG ;
 int TS_CP_GENERIC ;
 int TS_CP_IDENTIFIER ;
 int TS_CP_OVERLOAD ;
 int TS_CP_PTRMEM ;
 int TS_CP_TINST_LEVEL ;
 int TS_CP_TPI ;

enum cp_tree_node_structure_enum
cp_tree_node_structure (union lang_tree_node * t)
{
  switch (TREE_CODE (&t->generic))
    {
    case 133: return TS_CP_DEFAULT_ARG;
    case 132: return TS_CP_IDENTIFIER;
    case 131: return TS_CP_OVERLOAD;
    case 129: return TS_CP_TPI;
    case 128: return TS_CP_TINST_LEVEL;
    case 130: return TS_CP_PTRMEM;
    case 134: return TS_CP_BASELINK;
    default: return TS_CP_GENERIC;
    }
}
