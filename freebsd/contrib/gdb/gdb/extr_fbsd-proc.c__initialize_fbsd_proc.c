
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fbsd_find_memory_regions ;
 int fbsd_make_corefile_notes ;

void
_initialize_fbsd_proc (void)
{
  extern void inftarg_set_find_memory_regions ();
  extern void inftarg_set_make_corefile_notes ();

  inftarg_set_find_memory_regions (fbsd_find_memory_regions);
  inftarg_set_make_corefile_notes (fbsd_make_corefile_notes);
}
