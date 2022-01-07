
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int DECL_FIELD_BIT_OFFSET (int ) ;
 int DECL_FIELD_OFFSET (int ) ;
 int DECL_UID (int ) ;





 int TREE_CODE (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int) ;

 int gcc_unreachable () ;
 int iterative_hash_expr (int ,int) ;

__attribute__((used)) static hashval_t
sra_hash_tree (tree t)
{
  hashval_t h;

  switch (TREE_CODE (t))
    {
    case 128:
    case 131:
    case 129:
      h = DECL_UID (t);
      break;

    case 132:
      h = TREE_INT_CST_LOW (t) ^ TREE_INT_CST_HIGH (t);
      break;

    case 130:
      h = iterative_hash_expr (TREE_OPERAND (t, 0), 0);
      h = iterative_hash_expr (TREE_OPERAND (t, 1), h);
      break;

    case 133:


      h = iterative_hash_expr (DECL_FIELD_OFFSET (t), 0);
      h = iterative_hash_expr (DECL_FIELD_BIT_OFFSET (t), h);
      break;

    default:
      gcc_unreachable ();
    }

  return h;
}
