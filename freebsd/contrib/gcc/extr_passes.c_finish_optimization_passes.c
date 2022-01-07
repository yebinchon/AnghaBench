
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dump_file_info {int flags; } ;
typedef enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;
struct TYPE_4__ {int static_pass_number; } ;
struct TYPE_3__ {int static_pass_number; } ;


 int TDF_GRAPH ;
 int TDI_end ;
 int TV_DUMP ;
 scalar_t__ dump_begin (int ,int *) ;
 int dump_combine_total_stats (scalar_t__) ;
 int dump_end (int ,scalar_t__) ;
 scalar_t__ dump_file ;
 scalar_t__ dump_initialized_p (int) ;
 int end_branch_prob () ;
 int finish_graph_dump_file (char*) ;
 scalar_t__ flag_branch_probabilities ;
 scalar_t__ flag_test_coverage ;
 int free (char*) ;
 struct dump_file_info* get_dump_file_info (int) ;
 char* get_dump_file_name (int) ;
 scalar_t__ graph_dump_format ;
 scalar_t__ no_graph ;
 scalar_t__ optimize ;
 TYPE_2__ pass_combine ;
 TYPE_1__ pass_profile ;
 scalar_t__ profile_arc_flag ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
finish_optimization_passes (void)
{
  enum tree_dump_index i;
  struct dump_file_info *dfi;
  char *name;

  timevar_push (TV_DUMP);
  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      dump_file = dump_begin (pass_profile.static_pass_number, ((void*)0));
      end_branch_prob ();
      if (dump_file)
 dump_end (pass_profile.static_pass_number, dump_file);
    }

  if (optimize > 0)
    {
      dump_file = dump_begin (pass_combine.static_pass_number, ((void*)0));
      if (dump_file)
 {
   dump_combine_total_stats (dump_file);
          dump_end (pass_combine.static_pass_number, dump_file);
 }
    }


  if (graph_dump_format != no_graph)
    for (i = TDI_end; (dfi = get_dump_file_info (i)) != ((void*)0); ++i)
      if (dump_initialized_p (i)
   && (dfi->flags & TDF_GRAPH) != 0
   && (name = get_dump_file_name (i)) != ((void*)0))
 {
   finish_graph_dump_file (name);
   free (name);
 }

  timevar_pop (TV_DUMP);
}
