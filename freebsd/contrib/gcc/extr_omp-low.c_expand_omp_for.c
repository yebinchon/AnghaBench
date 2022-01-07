
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {int sched_kind; scalar_t__ exit; scalar_t__ cont; int entry; } ;
struct omp_for_data {int sched_kind; int have_ordered; int * chunk_size; } ;


 int BUILT_IN_GOMP_LOOP_STATIC_NEXT ;
 int BUILT_IN_GOMP_LOOP_STATIC_START ;
 int OMP_CLAUSE_SCHEDULE_STATIC ;
 int expand_omp_for_generic (struct omp_region*,struct omp_for_data*,int,int) ;
 int expand_omp_for_static_chunk (struct omp_region*,struct omp_for_data*) ;
 int expand_omp_for_static_nochunk (struct omp_region*,struct omp_for_data*) ;
 int extract_omp_for_data (int ,struct omp_for_data*) ;
 int last_stmt (int ) ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;

__attribute__((used)) static void
expand_omp_for (struct omp_region *region)
{
  struct omp_for_data fd;

  push_gimplify_context ();

  extract_omp_for_data (last_stmt (region->entry), &fd);
  region->sched_kind = fd.sched_kind;

  if (fd.sched_kind == OMP_CLAUSE_SCHEDULE_STATIC
      && !fd.have_ordered
      && region->cont
      && region->exit)
    {
      if (fd.chunk_size == ((void*)0))
 expand_omp_for_static_nochunk (region, &fd);
      else
 expand_omp_for_static_chunk (region, &fd);
    }
  else
    {
      int fn_index = fd.sched_kind + fd.have_ordered * 4;
      int start_ix = BUILT_IN_GOMP_LOOP_STATIC_START + fn_index;
      int next_ix = BUILT_IN_GOMP_LOOP_STATIC_NEXT + fn_index;
      expand_omp_for_generic (region, &fd, start_ix, next_ix);
    }

  pop_gimplify_context (((void*)0));
}
