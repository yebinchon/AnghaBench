
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * edge_to_cases ;
 int htab_delete (int *) ;

void
end_recording_case_labels (void)
{
  htab_delete (edge_to_cases);
  edge_to_cases = ((void*)0);
}
