
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncols; scalar_t__* col_offset; scalar_t__* col_type; } ;
typedef TYPE_1__ Frame_Chunk ;


 scalar_t__ DW_CFA_unreferenced ;
 void* xcrealloc (scalar_t__*,int,int) ;

__attribute__((used)) static void
frame_need_space (Frame_Chunk *fc, int reg)
{
  int prev = fc->ncols;

  if (reg < fc->ncols)
    return;

  fc->ncols = reg + 1;
  fc->col_type = xcrealloc (fc->col_type, fc->ncols, sizeof (short int));
  fc->col_offset = xcrealloc (fc->col_offset, fc->ncols, sizeof (int));

  while (prev < fc->ncols)
    {
      fc->col_type[prev] = DW_CFA_unreferenced;
      fc->col_offset[prev] = 0;
      prev++;
    }
}
