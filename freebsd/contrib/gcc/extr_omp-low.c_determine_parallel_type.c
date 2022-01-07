
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct omp_region {scalar_t__ type; int is_combined_parallel; int ws_args; TYPE_1__* inner; int * exit; int * entry; } ;
typedef int * basic_block ;
struct TYPE_2__ {scalar_t__ type; int is_combined_parallel; int * exit; int * entry; } ;


 int OMP_CLAUSE_ORDERED ;
 int OMP_CLAUSE_SCHEDULE ;
 scalar_t__ OMP_CLAUSE_SCHEDULE_KIND (int *) ;
 scalar_t__ OMP_CLAUSE_SCHEDULE_STATIC ;
 scalar_t__ OMP_FOR ;
 int * OMP_FOR_CLAUSES (int *) ;
 scalar_t__ OMP_PARALLEL ;
 scalar_t__ OMP_PARALLEL_COMBINED (int *) ;
 scalar_t__ OMP_SECTIONS ;
 int * find_omp_clause (int *,int ) ;
 int get_ws_args_for (int *) ;
 scalar_t__ last_and_only_stmt (int *) ;
 int * last_stmt (int *) ;
 int * single_succ (int *) ;
 scalar_t__ workshare_safe_to_combine_p (int *,int *) ;

__attribute__((used)) static void
determine_parallel_type (struct omp_region *region)
{
  basic_block par_entry_bb, par_exit_bb;
  basic_block ws_entry_bb, ws_exit_bb;

  if (region == ((void*)0) || region->inner == ((void*)0)
      || region->exit == ((void*)0) || region->inner->exit == ((void*)0))
    return;


  if (region->type != OMP_PARALLEL
      || (region->inner->type != OMP_FOR
   && region->inner->type != OMP_SECTIONS))
    return;



  par_entry_bb = region->entry;
  par_exit_bb = region->exit;
  ws_entry_bb = region->inner->entry;
  ws_exit_bb = region->inner->exit;

  if (single_succ (par_entry_bb) == ws_entry_bb
      && single_succ (ws_exit_bb) == par_exit_bb
      && workshare_safe_to_combine_p (par_entry_bb, ws_entry_bb)
      && (OMP_PARALLEL_COMBINED (last_stmt (par_entry_bb))
   || (last_and_only_stmt (ws_entry_bb)
       && last_and_only_stmt (par_exit_bb))))
    {
      tree ws_stmt = last_stmt (ws_entry_bb);

      if (region->inner->type == OMP_FOR)
 {
   tree clauses = OMP_FOR_CLAUSES (ws_stmt);
   tree c = find_omp_clause (clauses, OMP_CLAUSE_SCHEDULE);
   if (c == ((void*)0)
       || OMP_CLAUSE_SCHEDULE_KIND (c) == OMP_CLAUSE_SCHEDULE_STATIC
       || find_omp_clause (clauses, OMP_CLAUSE_ORDERED))
     {
       region->is_combined_parallel = 0;
       region->inner->is_combined_parallel = 0;
       return;
     }
 }

      region->is_combined_parallel = 1;
      region->inner->is_combined_parallel = 1;
      region->ws_args = get_ws_args_for (ws_stmt);
    }
}
