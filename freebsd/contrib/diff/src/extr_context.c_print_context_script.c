
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct change {int ignore; struct change* link; } ;
struct TYPE_4__ {int prefix_lines; } ;
struct TYPE_3__ {scalar_t__ fastmap; } ;


 int LIN_MAX ;
 TYPE_2__* files ;
 int find_function_last_match ;
 int find_function_last_search ;
 int find_hunk ;
 scalar_t__ ignore_blank_lines ;
 TYPE_1__ ignore_regexp ;
 int mark_ignorable (struct change*) ;
 int pr_context_hunk ;
 int pr_unidiff_hunk ;
 int print_script (struct change*,int ,int ) ;

void
print_context_script (struct change *script, bool unidiff)
{
  if (ignore_blank_lines || ignore_regexp.fastmap)
    mark_ignorable (script);
  else
    {
      struct change *e;
      for (e = script; e; e = e->link)
 e->ignore = 0;
    }

  find_function_last_search = - files[0].prefix_lines;
  find_function_last_match = LIN_MAX;

  if (unidiff)
    print_script (script, find_hunk, pr_unidiff_hunk);
  else
    print_script (script, find_hunk, pr_context_hunk);
}
