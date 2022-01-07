
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * allocated_bundle_states_chain ;
 scalar_t__ bundle_states_num ;
 int * free_bundle_state_chain ;

__attribute__((used)) static void
initiate_bundle_states (void)
{
  bundle_states_num = 0;
  free_bundle_state_chain = ((void*)0);
  allocated_bundle_states_chain = ((void*)0);
}
