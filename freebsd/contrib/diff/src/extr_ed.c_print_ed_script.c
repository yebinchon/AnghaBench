
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {int dummy; } ;


 int find_reverse_change ;
 int print_ed_hunk ;
 int print_script (struct change*,int ,int ) ;

void
print_ed_script (struct change *script)
{
  print_script (script, find_reverse_change, print_ed_hunk);
}
