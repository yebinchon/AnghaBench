
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_7__ {int logical_input_file; int logical_input_line; } ;


 int _ (char*) ;
 int as_fatal (int ) ;
 int from_sb ;
 int from_sb_is_expansion ;
 TYPE_3__* input_scrub_push (char*) ;
 int logical_input_file ;
 int logical_input_line ;
 scalar_t__ macro_nest ;
 scalar_t__ max_macro_nest ;
 int md_macro_start () ;
 TYPE_3__* next_saved_file ;
 int sb_add_char (int *,char) ;
 int sb_index ;
 int sb_new (int *) ;
 int sb_scrub_and_add_sb (int *,TYPE_1__*) ;

void
input_scrub_include_sb (sb *from, char *position, int is_expansion)
{
  if (macro_nest > max_macro_nest)
    as_fatal (_("macros nested too deeply"));
  ++macro_nest;
  next_saved_file = input_scrub_push (position);

  sb_new (&from_sb);
  from_sb_is_expansion = is_expansion;
  if (from->len >= 1 && from->ptr[0] != '\n')
    {

      sb_add_char (&from_sb, '\n');
    }
  sb_scrub_and_add_sb (&from_sb, from);
  sb_index = 1;



  logical_input_line = next_saved_file->logical_input_line;
  logical_input_file = next_saved_file->logical_input_file;
}
