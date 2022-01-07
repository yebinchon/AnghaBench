
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CLEANUP_CFGLAYOUT ;
 int cfg_layout_rtl_register_cfg_hooks () ;
 int cleanup_cfg (unsigned int) ;
 int initialize_original_copy_tables () ;
 int record_effective_endpoints () ;

void
cfg_layout_initialize (unsigned int flags)
{
  initialize_original_copy_tables ();

  cfg_layout_rtl_register_cfg_hooks ();

  record_effective_endpoints ();

  cleanup_cfg (CLEANUP_CFGLAYOUT | flags);
}
