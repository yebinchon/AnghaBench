
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int nb_iterations; } ;


 scalar_t__ INTEGER_CST ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_INT_CST_LOW (int ) ;
 scalar_t__ TREE_OVERFLOW (int ) ;
 int build_int_cst (int ,int) ;
 int chrec_dont_know ;
 int chrec_fold_plus (int ,int ,int ) ;
 int chrec_type (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int print_generic_expr (scalar_t__,int ,int ) ;

__attribute__((used)) static inline tree
set_nb_iterations_in_loop (struct loop *loop,
      tree res)
{
  tree type = chrec_type (res);

  res = chrec_fold_plus (type, res, build_int_cst (type, 1));





  if (TREE_CODE (res) == INTEGER_CST
      && (TREE_INT_CST_LOW (res) == 0
   || TREE_OVERFLOW (res)))
    res = chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (set_nb_iterations_in_loop = ");
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, "))\n");
    }

  loop->nb_iterations = res;
  return res;
}
