
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int stmt_vec_info ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int GET_MODE_NUNITS (int ) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;


 int NULL_TREE ;

 scalar_t__ REAL_CST ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (int ) ;
 int STMT_VINFO_VECTYPE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;

 int build_constructor_from_list (int ,int ) ;
 int build_int_cst (int ,int ) ;
 int build_real (int ,int ) ;
 int build_vector (int ,int ) ;
 int dconst0 ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int tree_cons (int ,int ,int ) ;
 int vect_init_vector (int ,int ) ;
 int vinfo_for_stmt (int ) ;

__attribute__((used)) static tree
get_initial_def_for_reduction (tree stmt, tree init_val, tree *scalar_def)
{
  stmt_vec_info stmt_vinfo = vinfo_for_stmt (stmt);
  tree vectype = STMT_VINFO_VECTYPE (stmt_vinfo);
  int nunits = GET_MODE_NUNITS (TYPE_MODE (vectype));
  int nelements;
  enum tree_code code = TREE_CODE (TREE_OPERAND (stmt, 1));
  tree type = TREE_TYPE (init_val);
  tree def;
  tree vec, t = NULL_TREE;
  bool need_epilog_adjust;
  int i;

  gcc_assert (INTEGRAL_TYPE_P (type) || SCALAR_FLOAT_TYPE_P (type));

  switch (code)
  {
  case 128:
  case 132:
  case 129:
    if (INTEGRAL_TYPE_P (type))
      def = build_int_cst (type, 0);
    else
      def = build_real (type, dconst0);
    nelements = nunits - 1;
    need_epilog_adjust = 0;

    break;

  case 130:
  case 131:
    def = init_val;
    nelements = nunits;
    need_epilog_adjust = 0;
    break;

  default:
    gcc_unreachable ();
  }

  for (i = nelements - 1; i >= 0; --i)
    t = tree_cons (NULL_TREE, def, t);

  if (nelements == nunits - 1)
    {

      t = tree_cons (NULL_TREE, init_val, t);
      nelements += 1;
    }
  gcc_assert (nelements == nunits);

  if (TREE_CODE (init_val) == INTEGER_CST || TREE_CODE (init_val) == REAL_CST)
    vec = build_vector (vectype, t);
  else
    vec = build_constructor_from_list (vectype, t);

  if (!need_epilog_adjust)
    *scalar_def = NULL_TREE;
  else
    *scalar_def = init_val;

  return vect_init_vector (stmt, vec);
}
