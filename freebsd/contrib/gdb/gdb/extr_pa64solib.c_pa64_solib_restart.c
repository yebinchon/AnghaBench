
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct so_list {struct so_list* next; } ;
struct TYPE_3__ {scalar_t__ data_base; } ;
struct TYPE_4__ {scalar_t__ dyninfo_sect; scalar_t__ dld_flags; TYPE_1__ dld_desc; scalar_t__ load_map_addr; scalar_t__ load_map; scalar_t__ dld_flags_addr; scalar_t__ have_read_dld_descriptor; scalar_t__ is_valid; } ;
typedef scalar_t__ LONGEST ;


 int disable_breakpoints_in_shlibs (int ) ;
 TYPE_2__ dld_cache ;
 scalar_t__ pa64_solib_st_size_threshold_exceeded ;
 scalar_t__ pa64_solib_total_st_size ;
 struct so_list* so_list_head ;
 int xfree (struct so_list*) ;

void
pa64_solib_restart (void)
{
  struct so_list *sl = so_list_head;



  disable_breakpoints_in_shlibs (0);


  while (sl)
    {
      struct so_list *next_sl = sl->next;
      xfree (sl);
      sl = next_sl;
    }
  so_list_head = ((void*)0);

  pa64_solib_total_st_size = (LONGEST) 0;
  pa64_solib_st_size_threshold_exceeded = 0;

  dld_cache.is_valid = 0;
  dld_cache.have_read_dld_descriptor = 0;
  dld_cache.dld_flags_addr = 0;
  dld_cache.load_map = 0;
  dld_cache.load_map_addr = 0;
  dld_cache.dld_desc.data_base = 0;
  dld_cache.dld_flags = 0;
  dld_cache.dyninfo_sect = 0;
}
