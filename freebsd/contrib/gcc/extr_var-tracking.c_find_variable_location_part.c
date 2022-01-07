
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* variable ;
struct TYPE_5__ {int n_var_parts; TYPE_1__* var_part; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
typedef scalar_t__ HOST_WIDE_INT ;



__attribute__((used)) static inline int
find_variable_location_part (variable var, HOST_WIDE_INT offset,
        int *insertion_point)
{
  int pos, low, high;


  low = 0;
  high = var->n_var_parts;
  while (low != high)
    {
      pos = (low + high) / 2;
      if (var->var_part[pos].offset < offset)
 low = pos + 1;
      else
 high = pos;
    }
  pos = low;

  if (insertion_point)
    *insertion_point = pos;

  if (pos < var->n_var_parts && var->var_part[pos].offset == offset)
    return pos;

  return -1;
}
