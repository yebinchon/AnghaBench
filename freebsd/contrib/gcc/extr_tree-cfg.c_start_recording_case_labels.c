
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * edge_to_cases ;
 int edge_to_cases_cleanup ;
 int edge_to_cases_eq ;
 int edge_to_cases_hash ;
 int gcc_assert (int ) ;
 int * htab_create (int,int ,int ,int ) ;

void
start_recording_case_labels (void)
{
  gcc_assert (edge_to_cases == ((void*)0));

  edge_to_cases = htab_create (37,
          edge_to_cases_hash,
          edge_to_cases_eq,
          edge_to_cases_cleanup);
}
