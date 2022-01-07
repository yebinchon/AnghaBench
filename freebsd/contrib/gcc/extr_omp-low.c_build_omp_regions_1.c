
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct omp_region {scalar_t__ type; void* cont; struct omp_region* outer; void* exit; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int block_stmt_iterator ;
typedef void* basic_block ;


 int CDI_DOMINATORS ;
 int OMP_CONTINUE ;
 scalar_t__ OMP_DIRECTIVE_P (int ) ;
 scalar_t__ OMP_PARALLEL ;
 int OMP_RETURN ;
 int TREE_CODE (int ) ;
 int bsi_end_p (int ) ;
 int bsi_last (void*) ;
 int bsi_stmt (int ) ;
 int determine_parallel_type (struct omp_region*) ;
 void* first_dom_son (int ,void*) ;
 int gcc_assert (struct omp_region*) ;
 struct omp_region* new_omp_region (void*,int,struct omp_region*) ;
 void* next_dom_son (int ,void*) ;

__attribute__((used)) static void
build_omp_regions_1 (basic_block bb, struct omp_region *parent)
{
  block_stmt_iterator si;
  tree stmt;
  basic_block son;

  si = bsi_last (bb);
  if (!bsi_end_p (si) && OMP_DIRECTIVE_P (bsi_stmt (si)))
    {
      struct omp_region *region;
      enum tree_code code;

      stmt = bsi_stmt (si);
      code = TREE_CODE (stmt);

      if (code == OMP_RETURN)
 {



   gcc_assert (parent);
   region = parent;
   region->exit = bb;
   parent = parent->outer;



   if (region->type == OMP_PARALLEL)
     determine_parallel_type (region);
 }
      else if (code == OMP_CONTINUE)
 {
   gcc_assert (parent);
   parent->cont = bb;
 }
      else
 {


   region = new_omp_region (bb, code, parent);
   parent = region;
 }
    }

  for (son = first_dom_son (CDI_DOMINATORS, bb);
       son;
       son = next_dom_son (CDI_DOMINATORS, son))
    build_omp_regions_1 (son, parent);
}
