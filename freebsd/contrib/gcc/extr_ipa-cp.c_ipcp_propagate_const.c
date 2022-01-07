
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union parameter_info {int dummy; } parameter_info ;
typedef int tree ;
struct cgraph_node {int decl; } ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int TREE_TYPE (int ) ;
 int build_const_val (union parameter_info*,int,int ) ;
 char* cgraph_node_name (struct cgraph_node*) ;
 int constant_val_insert (int ,int ,int ) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,char*) ;
 int ipa_method_get_tree (struct cgraph_node*,int) ;

__attribute__((used)) static void
ipcp_propagate_const (struct cgraph_node *mt, int param,
        union parameter_info *cvalue ,enum cvalue_type type)
{
  tree fndecl;
  tree const_val;
  tree parm_tree;

  if (dump_file)
    fprintf (dump_file, "propagating const to %s\n", cgraph_node_name (mt));
  fndecl = mt->decl;
  parm_tree = ipa_method_get_tree (mt, param);
  const_val = build_const_val (cvalue, type, TREE_TYPE (parm_tree));
  constant_val_insert (fndecl, parm_tree, const_val);
}
