
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {scalar_t__ blocks_to_analyze; scalar_t__ blocks_to_scan; } ;
struct dataflow {struct dataflow* problem_data; struct df* df; } ;


 int BITMAP_FREE (scalar_t__) ;
 int df_scan_free_internal (struct dataflow*) ;
 int free (struct dataflow*) ;

__attribute__((used)) static void
df_scan_free (struct dataflow *dflow)
{
  struct df *df = dflow->df;

  if (dflow->problem_data)
    {
      df_scan_free_internal (dflow);
      free (dflow->problem_data);
    }

  if (df->blocks_to_scan)
    BITMAP_FREE (df->blocks_to_scan);

  if (df->blocks_to_analyze)
    BITMAP_FREE (df->blocks_to_analyze);

  free (dflow);
}
