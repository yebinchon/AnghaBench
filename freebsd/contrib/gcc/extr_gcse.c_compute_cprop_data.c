
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compute_available (int ,int ,int ,int ) ;
 int compute_local_properties (int ,int ,int *,int *) ;
 int cprop_absaltered ;
 int cprop_avin ;
 int cprop_avout ;
 int cprop_pavloc ;
 int set_hash_table ;

__attribute__((used)) static void
compute_cprop_data (void)
{
  compute_local_properties (cprop_absaltered, cprop_pavloc, ((void*)0), &set_hash_table);
  compute_available (cprop_pavloc, cprop_absaltered,
       cprop_avout, cprop_avin);
}
