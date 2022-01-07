
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum dwarf_section_display_enum { ____Placeholder_dwarf_section_display_enum } dwarf_section_display_enum ;
struct TYPE_3__ {struct TYPE_3__* range_lists; int max_range_lists; struct TYPE_3__* have_frame_base; struct TYPE_3__* loc_offsets; int max_loc_offsets; } ;


 TYPE_1__* debug_information ;
 int free (TYPE_1__*) ;
 int free_abbrevs () ;
 int free_debug_section (int) ;
 int max ;
 int num_debug_info_entries ;

void
free_debug_memory (void)
{
  enum dwarf_section_display_enum i;

  free_abbrevs ();

  for (i = 0; i < max; i++)
    free_debug_section (i);

  if (debug_information)
    {
      for (i = 0; i < num_debug_info_entries; i++)
 {
   if (!debug_information [i].max_loc_offsets)
     {
       free (debug_information [i].loc_offsets);
       free (debug_information [i].have_frame_base);
     }
   if (!debug_information [i].max_range_lists)
     free (debug_information [i].range_lists);
 }
      free (debug_information);
      debug_information = ((void*)0);
      num_debug_info_entries = 0;
    }

}
