
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; int start; } ;


 TYPE_1__* pst_syms_array ;
 int pst_syms_count ;

__attribute__((used)) static int
find_next_pst_start (int index)
{
  int i;

  for (i = pst_syms_count - 1; i >= 0; i--)
    if (pst_syms_array[i].end <= index)
      return (i == pst_syms_count - 1) ? 0 : pst_syms_array[i + 1].start - 1;

  if (pst_syms_array[0].start > index)
    return pst_syms_array[0].start - 1;

  return 0;
}
