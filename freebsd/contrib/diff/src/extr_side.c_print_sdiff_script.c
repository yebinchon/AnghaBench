
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct change {int dummy; } ;
struct TYPE_2__ {int valid_lines; int prefix_lines; } ;


 int begin_output () ;
 TYPE_1__* files ;
 int find_change ;
 int next0 ;
 int next1 ;
 int print_script (struct change*,int ,int ) ;
 int print_sdiff_common_lines (int ,int ) ;
 int print_sdiff_hunk ;

void
print_sdiff_script (struct change *script)
{
  begin_output ();

  next0 = next1 = - files[0].prefix_lines;
  print_script (script, find_change, print_sdiff_hunk);

  print_sdiff_common_lines (files[0].valid_lines, files[1].valid_lines);
}
