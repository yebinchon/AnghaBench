
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loop_vec_info ;


 int REPORT_DETAILS ;
 int REPORT_UNVECTORIZED_LOOPS ;
 int fprintf (int ,char*) ;
 int vect_compute_data_refs_alignment (int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;

__attribute__((used)) static bool
vect_analyze_data_refs_alignment (loop_vec_info loop_vinfo)
{
  if (vect_print_dump_info (REPORT_DETAILS))
    fprintf (vect_dump, "=== vect_analyze_data_refs_alignment ===");

  if (!vect_compute_data_refs_alignment (loop_vinfo))
    {
      if (vect_print_dump_info (REPORT_UNVECTORIZED_LOOPS))
 fprintf (vect_dump,
   "not vectorized: can't calculate alignment for data ref.");
      return 0;
    }

  return 1;
}
