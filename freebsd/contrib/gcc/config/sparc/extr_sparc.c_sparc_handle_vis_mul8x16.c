
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int NULL_TREE ;
 int TREE_CHAIN (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_VALUE (int ) ;
 int build_int_cst (int ,int) ;
 int gcc_unreachable () ;
 int nreverse (int ) ;
 int sparc_vis_mul8x16 (int,int) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
sparc_handle_vis_mul8x16 (int fncode, tree inner_type, tree elts0, tree elts1)
{
  tree n_elts = NULL_TREE;
  int scale;

  switch (fncode)
    {
    case 130:
      for (; elts0 && elts1;
    elts0 = TREE_CHAIN (elts0), elts1 = TREE_CHAIN (elts1))
 {
   int val
     = sparc_vis_mul8x16 (TREE_INT_CST_LOW (TREE_VALUE (elts0)),
     TREE_INT_CST_LOW (TREE_VALUE (elts1)));
   n_elts = tree_cons (NULL_TREE,
         build_int_cst (inner_type, val),
         n_elts);
 }
      break;

    case 128:
      scale = TREE_INT_CST_LOW (TREE_VALUE (elts1));

      for (; elts0; elts0 = TREE_CHAIN (elts0))
 {
   int val
     = sparc_vis_mul8x16 (TREE_INT_CST_LOW (TREE_VALUE (elts0)),
     scale);
   n_elts = tree_cons (NULL_TREE,
         build_int_cst (inner_type, val),
         n_elts);
 }
      break;

    case 129:
      scale = TREE_INT_CST_LOW (TREE_VALUE (TREE_CHAIN (elts1)));

      for (; elts0; elts0 = TREE_CHAIN (elts0))
 {
   int val
     = sparc_vis_mul8x16 (TREE_INT_CST_LOW (TREE_VALUE (elts0)),
     scale);
   n_elts = tree_cons (NULL_TREE,
         build_int_cst (inner_type, val),
         n_elts);
 }
      break;

    default:
      gcc_unreachable ();
    }

  return nreverse (n_elts);

}
