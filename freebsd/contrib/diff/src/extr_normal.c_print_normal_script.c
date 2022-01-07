
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {int dummy; } ;


 int find_change ;
 int print_normal_hunk ;
 int print_script (struct change*,int ,int ) ;

void
print_normal_script (struct change *script)
{
  print_script (script, find_change, print_normal_hunk);
}
