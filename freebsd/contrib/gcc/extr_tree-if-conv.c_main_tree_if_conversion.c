
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop {int dummy; } ;
struct TYPE_2__ {unsigned int num; struct loop** parray; } ;


 TYPE_1__* current_loops ;
 int tree_if_conversion (struct loop*,int) ;

__attribute__((used)) static unsigned int
main_tree_if_conversion (void)
{
  unsigned i, loop_num;
  struct loop *loop;

  if (!current_loops)
    return 0;

  loop_num = current_loops->num;
  for (i = 0; i < loop_num; i++)
    {
      loop = current_loops->parray[i];
      if (!loop)
      continue;

      tree_if_conversion (loop, 1);
    }
  return 0;
}
