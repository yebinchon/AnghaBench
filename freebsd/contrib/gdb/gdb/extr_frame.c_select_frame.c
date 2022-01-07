
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {scalar_t__ language; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ la_language; } ;


 TYPE_1__* current_language ;
 struct frame_info* deprecated_selected_frame ;
 struct symtab* find_pc_symtab (int ) ;
 int frame_relative_level (struct frame_info*) ;
 int get_frame_address_in_block (struct frame_info*) ;
 scalar_t__ language_mode ;
 scalar_t__ language_mode_auto ;
 scalar_t__ language_unknown ;
 int selected_frame_level_changed_hook (int ) ;
 int set_language (scalar_t__) ;

void
select_frame (struct frame_info *fi)
{
  struct symtab *s;

  deprecated_selected_frame = fi;


  if (selected_frame_level_changed_hook)
    selected_frame_level_changed_hook (frame_relative_level (fi));
  if (fi)
    {






      s = find_pc_symtab (get_frame_address_in_block (fi));
      if (s
   && s->language != current_language->la_language
   && s->language != language_unknown
   && language_mode == language_mode_auto)
 {
   set_language (s->language);
 }
    }
}
