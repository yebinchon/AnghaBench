
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varray_type ;
typedef union parameter_info {int dummy; } parameter_info ;
typedef int tree ;
struct ipa_replace_map {int dummy; } ;
struct cgraph_node {struct cgraph_edge* callers; struct cgraph_node* next; } ;
struct cgraph_edge {struct cgraph_edge* next_caller; } ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int CONST_VALUE_REF ;
 int TREE_READONLY (int ) ;
 int VARRAY_CLEAR (int ) ;
 int VARRAY_GENERIC_PTR_INIT (int ,int,char*) ;
 int VARRAY_PUSH_GENERIC_PTR (int ,struct ipa_replace_map*) ;
 int VEC (int ,int ) ;
 int VEC_alloc (int ,int ,int) ;
 int VEC_free (int ,int ,int) ;
 int VEC_quick_push (int ,int,struct cgraph_edge*) ;
 int cgraph_edge_p ;
 struct cgraph_node* cgraph_function_versioning (struct cgraph_node*,int,int ) ;
 char* cgraph_node_name (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,char*) ;
 int heap ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 int ipa_method_get_tree (struct cgraph_node*,int) ;
 int ipcp_cloned_create (struct cgraph_node*,struct cgraph_node*) ;
 union parameter_info* ipcp_cval_get_cvalue (int ) ;
 int ipcp_cval_get_cvalue_type (int ) ;
 int ipcp_method_cval (struct cgraph_node*,int) ;
 scalar_t__ ipcp_method_dont_insert_const (struct cgraph_node*) ;
 int ipcp_propagate_const (struct cgraph_node*,int,union parameter_info*,int) ;
 struct ipa_replace_map* ipcp_replace_map_create (int,int ,union parameter_info*) ;
 scalar_t__ ipcp_type_is_const (int) ;
 int ipcp_update_callgraph () ;
 int ipcp_update_profiling () ;
 int redirect_callers ;

__attribute__((used)) static void
ipcp_insert_stage (void)
{
  struct cgraph_node *node, *node1 = ((void*)0);
  int i, const_param;
  union parameter_info *cvalue;
  VEC(cgraph_edge_p,heap) *redirect_callers;
  varray_type replace_trees;
  struct cgraph_edge *cs;
  int node_callers, count;
  tree parm_tree;
  enum cvalue_type type;
  struct ipa_replace_map *replace_param;

  for (node = cgraph_nodes; node; node = node->next)
    {


      if (ipcp_method_dont_insert_const (node))
 continue;
      const_param = 0;
      count = ipa_method_formal_count (node);
      for (i = 0; i < count; i++)
 {
   type = ipcp_cval_get_cvalue_type (ipcp_method_cval (node, i));
   if (ipcp_type_is_const (type))
     const_param++;
 }
      if (const_param == 0)
 continue;
      VARRAY_GENERIC_PTR_INIT (replace_trees, const_param, "replace_trees");
      for (i = 0; i < count; i++)
 {
   type = ipcp_cval_get_cvalue_type (ipcp_method_cval (node, i));
   if (ipcp_type_is_const (type))
     {
       cvalue = ipcp_cval_get_cvalue (ipcp_method_cval (node, i));
       parm_tree = ipa_method_get_tree (node, i);
       replace_param =
  ipcp_replace_map_create (type, parm_tree, cvalue);
       VARRAY_PUSH_GENERIC_PTR (replace_trees, replace_param);
     }
 }

      node_callers = 0;
      for (cs = node->callers; cs != ((void*)0); cs = cs->next_caller)
 node_callers++;
      redirect_callers = VEC_alloc (cgraph_edge_p, heap, node_callers);
      for (cs = node->callers; cs != ((void*)0); cs = cs->next_caller)
 VEC_quick_push (cgraph_edge_p, redirect_callers, cs);


      node1 =
 cgraph_function_versioning (node, redirect_callers, replace_trees);
      VEC_free (cgraph_edge_p, heap, redirect_callers);
      VARRAY_CLEAR (replace_trees);
      if (node1 == ((void*)0))
 continue;
      if (dump_file)
 fprintf (dump_file, "versioned function %s\n",
   cgraph_node_name (node));
      ipcp_cloned_create (node, node1);
      for (i = 0; i < count; i++)
 {
   type = ipcp_cval_get_cvalue_type (ipcp_method_cval (node, i));
   if (ipcp_type_is_const (type))
     {
       cvalue = ipcp_cval_get_cvalue (ipcp_method_cval (node, i));
       parm_tree = ipa_method_get_tree (node, i);
       if (type != CONST_VALUE_REF
    && !TREE_READONLY (parm_tree))
  ipcp_propagate_const (node1, i, cvalue, type);
     }
 }
    }
  ipcp_update_callgraph ();
  ipcp_update_profiling ();
}
