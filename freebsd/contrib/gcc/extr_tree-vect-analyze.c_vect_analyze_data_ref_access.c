
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct data_reference {int dummy; } ;


 int DR_REF (struct data_reference*) ;
 int DR_STEP (struct data_reference*) ;
 int REPORT_DETAILS ;
 int TREE_TYPE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ tree_int_cst_compare (int ,int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;

__attribute__((used)) static bool
vect_analyze_data_ref_access (struct data_reference *dr)
{
  tree step = DR_STEP (dr);
  tree scalar_type = TREE_TYPE (DR_REF (dr));

  if (!step || tree_int_cst_compare (step, TYPE_SIZE_UNIT (scalar_type)))
    {
      if (vect_print_dump_info (REPORT_DETAILS))
 fprintf (vect_dump, "not consecutive access");
      return 0;
    }
  return 1;
}
