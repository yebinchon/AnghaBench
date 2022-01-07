
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct line_map {scalar_t__ reason; int start_location; } ;
struct TYPE_4__ {int preprocessed; } ;
struct TYPE_3__ {scalar_t__ first_time; } ;


 struct line_map* INCLUDED_FROM (int *,struct line_map const*) ;
 int LAST_SOURCE_LINE_LOCATION (struct line_map const*) ;
 scalar_t__ LC_ENTER ;
 scalar_t__ LC_LEAVE ;
 TYPE_2__* cpp_get_options (int ) ;
 scalar_t__ flag_no_line_commands ;
 int line_table ;
 int maybe_print_line (int ) ;
 int parse_in ;
 TYPE_1__ print ;
 int print_line (int ,char const*) ;

void
pp_file_change (const struct line_map *map)
{
  const char *flags = "";

  if (flag_no_line_commands)
    return;

  if (map != ((void*)0))
    {
      if (print.first_time)
 {

   if (!cpp_get_options (parse_in)->preprocessed)
     print_line (map->start_location, flags);
   print.first_time = 0;
 }
      else
 {

   if (map->reason == LC_ENTER)
     {
       const struct line_map *from = INCLUDED_FROM (&line_table, map);
       maybe_print_line (LAST_SOURCE_LINE_LOCATION (from));
     }
   if (map->reason == LC_ENTER)
     flags = " 1";
   else if (map->reason == LC_LEAVE)
     flags = " 2";
   print_line (map->start_location, flags);
 }
    }
}
