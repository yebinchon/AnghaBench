
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int basic_block ;
typedef int * SSA_NAME_DEF_STMT ;


 int * PHI_ARG_DEF (int *,unsigned int) ;
 int * PHI_CHAIN (int *) ;
 unsigned int PHI_NUM_ARGS (int *) ;
 int PHI_RESULT (int *) ;
 int SET_PHI_ARG_DEF (int *,unsigned int,int *) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int *) ;
 int * create_phi_node (int *,int ) ;
 int * extract_component (int *,int *,int,int) ;
 int * get_component_ssa_name (int ,int) ;
 scalar_t__ is_complex_reg (int ) ;
 int * phi_nodes (int ) ;

__attribute__((used)) static void
update_phi_components (basic_block bb)
{
  tree phi;

  for (phi = phi_nodes (bb); phi; phi = PHI_CHAIN (phi))
    if (is_complex_reg (PHI_RESULT (phi)))
      {
 tree lr, li, pr = ((void*)0), pi = ((void*)0);
 unsigned int i, n;

 lr = get_component_ssa_name (PHI_RESULT (phi), 0);
 if (TREE_CODE (lr) == SSA_NAME)
   {
     pr = create_phi_node (lr, bb);
     SSA_NAME_DEF_STMT (lr) = pr;
   }

 li = get_component_ssa_name (PHI_RESULT (phi), 1);
 if (TREE_CODE (li) == SSA_NAME)
   {
     pi = create_phi_node (li, bb);
     SSA_NAME_DEF_STMT (li) = pi;
   }

 for (i = 0, n = PHI_NUM_ARGS (phi); i < n; ++i)
   {
     tree comp, arg = PHI_ARG_DEF (phi, i);
     if (pr)
       {
  comp = extract_component (((void*)0), arg, 0, 0);
  SET_PHI_ARG_DEF (pr, i, comp);
       }
     if (pi)
       {
  comp = extract_component (((void*)0), arg, 1, 0);
  SET_PHI_ARG_DEF (pi, i, comp);
       }
   }
      }
}
