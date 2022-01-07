
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int name; } ;
struct TYPE_13__ {int name; TYPE_3__ coverage; struct TYPE_13__* next; int num_lines; int lines; } ;
typedef TYPE_1__ source_t ;
struct TYPE_14__ {int name; struct TYPE_14__* next; } ;
typedef TYPE_2__ function_t ;
typedef TYPE_3__ coverage_t ;
typedef int coverage ;
typedef int FILE ;


 int XCNEWVEC (int ,int ) ;
 int accumulate_line_counts (TYPE_1__*) ;
 int add_line_counts (TYPE_3__*,TYPE_2__*) ;
 int bbg_file_name ;
 int create_file_names (char const*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ flag_function_summary ;
 scalar_t__ flag_gcov_file ;
 int fnotice (int ,char*,...) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int function_summary (TYPE_3__*,char*) ;
 TYPE_2__* functions ;
 int line_t ;
 char* make_gcov_file_name (char const*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int output_lines (int *,TYPE_1__*) ;
 scalar_t__ read_count_file () ;
 scalar_t__ read_graph_file () ;
 int solve_flow_graph (TYPE_2__*) ;
 TYPE_1__* sources ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
process_file (const char *file_name)
{
  source_t *src;
  function_t *fn;

  create_file_names (file_name);
  if (read_graph_file ())
    return;

  if (!functions)
    {
      fnotice (stderr, "%s:no functions found\n", bbg_file_name);
      return;
    }

  if (read_count_file ())
    return;

  for (fn = functions; fn; fn = fn->next)
    solve_flow_graph (fn);
  for (src = sources; src; src = src->next)
    src->lines = XCNEWVEC (line_t, src->num_lines);
  for (fn = functions; fn; fn = fn->next)
    {
      coverage_t coverage;

      memset (&coverage, 0, sizeof (coverage));
      coverage.name = fn->name;
      add_line_counts (flag_function_summary ? &coverage : ((void*)0), fn);
      if (flag_function_summary)
 {
   function_summary (&coverage, "Function");
   fnotice (stdout, "\n");
 }
    }

  for (src = sources; src; src = src->next)
    {
      accumulate_line_counts (src);
      function_summary (&src->coverage, "File");
      if (flag_gcov_file)
 {
   char *gcov_file_name = make_gcov_file_name (file_name, src->name);
   FILE *gcov_file = fopen (gcov_file_name, "w");

   if (gcov_file)
     {
       fnotice (stdout, "%s:creating '%s'\n",
         src->name, gcov_file_name);
       output_lines (gcov_file, src);
       if (ferror (gcov_file))
      fnotice (stderr, "%s:error writing output file '%s'\n",
        src->name, gcov_file_name);
       fclose (gcov_file);
     }
   else
     fnotice (stderr, "%s:could not open output file '%s'\n",
       src->name, gcov_file_name);
   free (gcov_file_name);
 }
      fnotice (stdout, "\n");
    }
}
