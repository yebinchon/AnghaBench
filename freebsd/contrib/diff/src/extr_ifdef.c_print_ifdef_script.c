
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct change {int dummy; } ;
struct TYPE_2__ {int valid_lines; int prefix_lines; } ;


 size_t UNCHANGED ;
 int begin_output () ;
 TYPE_1__* files ;
 int find_change ;
 int format_ifdef (int ,int ,int ,int ,int ) ;
 int * group_format ;
 int next_line0 ;
 int next_line1 ;
 int print_ifdef_hunk ;
 int print_script (struct change*,int ,int ) ;

void
print_ifdef_script (struct change *script)
{
  next_line0 = next_line1 = - files[0].prefix_lines;
  print_script (script, find_change, print_ifdef_hunk);
  if (next_line0 < files[0].valid_lines
      || next_line1 < files[1].valid_lines)
    {
      begin_output ();
      format_ifdef (group_format[UNCHANGED],
      next_line0, files[0].valid_lines,
      next_line1, files[1].valid_lines);
    }
}
