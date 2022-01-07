
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIGRATE_TYPES ;
 scalar_t__ SYSTEM_BOOTING ;
 int __build_all_zonelists (int *) ;
 int cpuset_init_current_mems_allowed () ;
 size_t current_zonelist_order ;
 int mminit_verify_zonelist () ;
 int nr_free_pagecache_pages () ;
 int nr_online_nodes ;
 int page_group_by_mobility_disabled ;
 int pageblock_nr_pages ;
 size_t policy_zone ;
 int printk (char*,int ,...) ;
 int set_zonelist_order () ;
 int stop_machine (int (*) (int *),void*,int *) ;
 scalar_t__ system_state ;
 int vm_total_pages ;
 int * zone_names ;
 int * zonelist_order_name ;

void build_all_zonelists(void *data)
{
 set_zonelist_order();

 if (system_state == SYSTEM_BOOTING) {
  __build_all_zonelists(((void*)0));
  mminit_verify_zonelist();
  cpuset_init_current_mems_allowed();
 } else {


  stop_machine(__build_all_zonelists, data, ((void*)0));

 }
 vm_total_pages = nr_free_pagecache_pages();







 if (vm_total_pages < (pageblock_nr_pages * MIGRATE_TYPES))
  page_group_by_mobility_disabled = 1;
 else
  page_group_by_mobility_disabled = 0;

 printk("Built %i zonelists in %s order, mobility grouping %s.  "
  "Total pages: %ld\n",
   nr_online_nodes,
   zonelist_order_name[current_zonelist_order],
   page_group_by_mobility_disabled ? "off" : "on",
   vm_total_pages);



}
