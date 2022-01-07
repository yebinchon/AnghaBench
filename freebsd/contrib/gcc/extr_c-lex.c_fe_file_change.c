
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_map {scalar_t__ reason; int start_location; int sysp; int to_line; int to_file; } ;
struct TYPE_2__ {int (* end_source_file ) (int) ;int (* start_source_file ) (int,int ) ;} ;


 int LAST_SOURCE_LINE (struct line_map const*) ;
 int LAST_SOURCE_LINE_LOCATION (struct line_map const*) ;
 scalar_t__ LC_ENTER ;
 scalar_t__ LC_LEAVE ;
 int MAIN_FILE_P (struct line_map const*) ;
 int c_header_level ;
 TYPE_1__* debug_hooks ;
 int in_system_header ;
 int input_filename ;
 int input_line ;
 int input_location ;
 int pending_lang_change ;
 int pop_srcloc () ;
 int push_srcloc (int,...) ;
 int stub1 (int,int ) ;
 int stub2 (int) ;
 int update_header_times (int ) ;
 int warning (int ,char*) ;

void
fe_file_change (const struct line_map *new_map)
{
  if (new_map == ((void*)0))
    return;

  if (new_map->reason == LC_ENTER)
    {


      if (!MAIN_FILE_P (new_map))
 {






   int included_at = LAST_SOURCE_LINE (new_map - 1);

   input_line = included_at;
   push_srcloc (new_map->to_file, 1);

   (*debug_hooks->start_source_file) (included_at, new_map->to_file);

   if (c_header_level)
     ++c_header_level;
   else if (new_map->sysp == 2)
     {
       c_header_level = 1;
       ++pending_lang_change;
     }

 }
    }
  else if (new_map->reason == LC_LEAVE)
    {

      if (c_header_level && --c_header_level == 0)
 {
   if (new_map->sysp == 2)
     warning (0, "badly nested C headers from preprocessor");
   --pending_lang_change;
 }

      pop_srcloc ();

      (*debug_hooks->end_source_file) (new_map->to_line);
    }

  update_header_times (new_map->to_file);
  in_system_header = new_map->sysp != 0;



  input_filename = new_map->to_file;
  input_line = new_map->to_line;

}
