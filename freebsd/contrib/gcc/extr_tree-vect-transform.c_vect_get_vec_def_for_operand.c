
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
typedef int * stmt_vec_info ;
typedef int loop_vec_info ;
typedef enum vect_def_type { ____Placeholder_vect_def_type } vect_def_type ;


 struct loop* LOOP_VINFO_LOOP (int ) ;
 int NULL_TREE ;
 int PHI_ARG_DEF_FROM_EDGE (int,int ) ;
 int PHI_NODE ;
 int REPORT_DETAILS ;
 int STMT_VINFO_LOOP_VINFO (int *) ;
 int STMT_VINFO_VECTYPE (int *) ;
 int STMT_VINFO_VEC_STMT (int *) ;
 int TDF_SLIM ;
 int TREE_CODE (int) ;
 int TREE_OPERAND (int,int ) ;
 int TYPE_VECTOR_SUBPARTS (int) ;
 int build_constructor_from_list (int,int) ;
 int build_vector (int,int) ;
 int fprintf (int ,char*,...) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_initial_def_for_reduction (int,int,int*) ;
 int internal_error (char*) ;
 int loop_preheader_edge (struct loop*) ;
 int print_generic_expr (int ,int,int ) ;
 int tree_cons (int,int,int) ;

 int vect_dump ;

 int vect_init_vector (int,int) ;

 int vect_is_simple_use (int,int ,int*,int*,int*) ;

 scalar_t__ vect_print_dump_info (int ) ;

 int * vinfo_for_stmt (int) ;

__attribute__((used)) static tree
vect_get_vec_def_for_operand (tree op, tree stmt, tree *scalar_def)
{
  tree vec_oprnd;
  tree vec_stmt;
  tree def_stmt;
  stmt_vec_info def_stmt_info = ((void*)0);
  stmt_vec_info stmt_vinfo = vinfo_for_stmt (stmt);
  tree vectype = STMT_VINFO_VECTYPE (stmt_vinfo);
  int nunits = TYPE_VECTOR_SUBPARTS (vectype);
  loop_vec_info loop_vinfo = STMT_VINFO_LOOP_VINFO (stmt_vinfo);
  struct loop *loop = LOOP_VINFO_LOOP (loop_vinfo);
  tree vec_inv;
  tree vec_cst;
  tree t = NULL_TREE;
  tree def;
  int i;
  enum vect_def_type dt;
  bool is_simple_use;

  if (vect_print_dump_info (REPORT_DETAILS))
    {
      fprintf (vect_dump, "vect_get_vec_def_for_operand: ");
      print_generic_expr (vect_dump, op, TDF_SLIM);
    }

  is_simple_use = vect_is_simple_use (op, loop_vinfo, &def_stmt, &def, &dt);
  gcc_assert (is_simple_use);
  if (vect_print_dump_info (REPORT_DETAILS))
    {
      if (def)
        {
          fprintf (vect_dump, "def =  ");
          print_generic_expr (vect_dump, def, TDF_SLIM);
        }
      if (def_stmt)
        {
          fprintf (vect_dump, "  def_stmt =  ");
          print_generic_expr (vect_dump, def_stmt, TDF_SLIM);
        }
    }

  switch (dt)
    {

    case 132:
      {
 if (scalar_def)
   *scalar_def = op;


        if (vect_print_dump_info (REPORT_DETAILS))
          fprintf (vect_dump, "Create vector_cst. nunits = %d", nunits);

        for (i = nunits - 1; i >= 0; --i)
          {
            t = tree_cons (NULL_TREE, op, t);
          }
        vec_cst = build_vector (vectype, t);
        return vect_init_vector (stmt, vec_cst);
      }


    case 130:
      {
 if (scalar_def)
   *scalar_def = def;


        if (vect_print_dump_info (REPORT_DETAILS))
          fprintf (vect_dump, "Create vector_inv.");

        for (i = nunits - 1; i >= 0; --i)
          {
            t = tree_cons (NULL_TREE, def, t);
          }


        vec_inv = build_constructor_from_list (vectype, t);
        return vect_init_vector (stmt, vec_inv);
      }


    case 129:
      {
 if (scalar_def)
   *scalar_def = def_stmt;


        def_stmt_info = vinfo_for_stmt (def_stmt);
        vec_stmt = STMT_VINFO_VEC_STMT (def_stmt_info);
        gcc_assert (vec_stmt);
        vec_oprnd = TREE_OPERAND (vec_stmt, 0);
        return vec_oprnd;
      }


    case 128:
      {
        gcc_assert (TREE_CODE (def_stmt) == PHI_NODE);


        op = PHI_ARG_DEF_FROM_EDGE (def_stmt, loop_preheader_edge (loop));
        return get_initial_def_for_reduction (stmt, op, scalar_def);
     }


    case 131:
      {
        if (vect_print_dump_info (REPORT_DETAILS))
          fprintf (vect_dump, "induction - unsupported.");
        internal_error ("no support for induction");
      }

    default:
      gcc_unreachable ();
    }
}
