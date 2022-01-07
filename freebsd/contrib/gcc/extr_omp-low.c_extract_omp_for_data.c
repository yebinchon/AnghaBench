
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct omp_for_data {void* v; int cond_code; void* n2; void* step; int have_nowait; int have_ordered; scalar_t__ sched_kind; int * chunk_size; void* for_stmt; void* n1; int * pre; } ;


 int DECL_P (void*) ;


 int INTEGER_TYPE ;



 int MODIFY_EXPR ;
 int NEGATE_EXPR ;
 int * NULL_TREE ;
 void* OMP_CLAUSE_CHAIN (void*) ;
 int OMP_CLAUSE_CODE (void*) ;



 int * OMP_CLAUSE_SCHEDULE_CHUNK_EXPR (void*) ;
 scalar_t__ OMP_CLAUSE_SCHEDULE_KIND (void*) ;
 scalar_t__ OMP_CLAUSE_SCHEDULE_RUNTIME ;
 scalar_t__ OMP_CLAUSE_SCHEDULE_STATIC ;
 void* OMP_FOR_CLAUSES (void*) ;
 void* OMP_FOR_COND (void*) ;
 void* OMP_FOR_INCR (void*) ;
 void* OMP_FOR_INIT (void*) ;

 int TREE_CODE (void*) ;
 void* TREE_OPERAND (void*,int) ;
 void* TREE_TYPE (void*) ;
 int build_int_cst (void*,int) ;
 void* fold_build1 (int ,void*,void*) ;
 void* fold_build2 (int,void*,void*,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int * integer_one_node ;
 int * integer_zero_node ;

__attribute__((used)) static void
extract_omp_for_data (tree for_stmt, struct omp_for_data *fd)
{
  tree t;

  fd->for_stmt = for_stmt;
  fd->pre = ((void*)0);

  t = OMP_FOR_INIT (for_stmt);
  gcc_assert (TREE_CODE (t) == MODIFY_EXPR);
  fd->v = TREE_OPERAND (t, 0);
  gcc_assert (DECL_P (fd->v));
  gcc_assert (TREE_CODE (TREE_TYPE (fd->v)) == INTEGER_TYPE);
  fd->n1 = TREE_OPERAND (t, 1);

  t = OMP_FOR_COND (for_stmt);
  fd->cond_code = TREE_CODE (t);
  gcc_assert (TREE_OPERAND (t, 0) == fd->v);
  fd->n2 = TREE_OPERAND (t, 1);
  switch (fd->cond_code)
    {
    case 133:
    case 135:
      break;
    case 134:
      fd->n2 = fold_build2 (128, TREE_TYPE (fd->n2), fd->n2,
      build_int_cst (TREE_TYPE (fd->n2), 1));
      fd->cond_code = 133;
      break;
    case 136:
      fd->n2 = fold_build2 (132, TREE_TYPE (fd->n2), fd->n2,
      build_int_cst (TREE_TYPE (fd->n2), 1));
      fd->cond_code = 135;
      break;
    default:
      gcc_unreachable ();
    }

  t = OMP_FOR_INCR (fd->for_stmt);
  gcc_assert (TREE_CODE (t) == MODIFY_EXPR);
  gcc_assert (TREE_OPERAND (t, 0) == fd->v);
  t = TREE_OPERAND (t, 1);
  gcc_assert (TREE_OPERAND (t, 0) == fd->v);
  switch (TREE_CODE (t))
    {
    case 128:
      fd->step = TREE_OPERAND (t, 1);
      break;
    case 132:
      fd->step = TREE_OPERAND (t, 1);
      fd->step = fold_build1 (NEGATE_EXPR, TREE_TYPE (fd->step), fd->step);
      break;
    default:
      gcc_unreachable ();
    }

  fd->have_nowait = fd->have_ordered = 0;
  fd->sched_kind = OMP_CLAUSE_SCHEDULE_STATIC;
  fd->chunk_size = NULL_TREE;

  for (t = OMP_FOR_CLAUSES (for_stmt); t ; t = OMP_CLAUSE_CHAIN (t))
    switch (OMP_CLAUSE_CODE (t))
      {
      case 131:
 fd->have_nowait = 1;
 break;
      case 130:
 fd->have_ordered = 1;
 break;
      case 129:
 fd->sched_kind = OMP_CLAUSE_SCHEDULE_KIND (t);
 fd->chunk_size = OMP_CLAUSE_SCHEDULE_CHUNK_EXPR (t);
 break;
      default:
 break;
      }

  if (fd->sched_kind == OMP_CLAUSE_SCHEDULE_RUNTIME)
    gcc_assert (fd->chunk_size == ((void*)0));
  else if (fd->chunk_size == ((void*)0))
    {


      if (fd->sched_kind != OMP_CLAUSE_SCHEDULE_STATIC || fd->have_ordered)
 fd->chunk_size = (fd->sched_kind == OMP_CLAUSE_SCHEDULE_STATIC)
    ? integer_zero_node : integer_one_node;
    }
}
