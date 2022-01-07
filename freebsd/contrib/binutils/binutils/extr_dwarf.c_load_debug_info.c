
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int section; } ;


 int FALSE ;
 TYPE_1__* debug_displays ;
 size_t info ;
 scalar_t__ last_pointer_size ;
 scalar_t__ load_debug_section (size_t,void*) ;
 scalar_t__ num_debug_info_entries ;
 scalar_t__ process_debug_info (int *,void*,int) ;
 int warned_about_missing_comp_units ;

__attribute__((used)) static unsigned int
load_debug_info (void * file)
{


  last_pointer_size = 0;
  warned_about_missing_comp_units = FALSE;


  if (num_debug_info_entries > 0)
    return num_debug_info_entries;

  if (load_debug_section (info, file)
      && process_debug_info (&debug_displays [info].section, file, 1))
    return num_debug_info_entries;
  else
    return 0;
}
