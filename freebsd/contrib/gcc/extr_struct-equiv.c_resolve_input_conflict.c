
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_count; } ;
struct equiv_info {int dying_inputs; void** x_local; void** y_local; int had_input_conflict; int * local_rvalue; TYPE_1__ cur; } ;
typedef void* rtx ;


 int STRUCT_EQUIV_MAX_LOCAL ;
 scalar_t__ dump_file ;
 int find_dying_inputs (struct equiv_info*) ;
 int fprintf (scalar_t__,char*,int,char*) ;
 int memcpy (void**,void**,int) ;
 int reg_overlap_mentioned_p (void*,void*) ;

__attribute__((used)) static bool
resolve_input_conflict (struct equiv_info *info)
{
  int i, j, end;
  int nswaps = 0;
  rtx save_x_local[STRUCT_EQUIV_MAX_LOCAL];
  rtx save_y_local[STRUCT_EQUIV_MAX_LOCAL];

  find_dying_inputs (info);
  if (info->dying_inputs <= 1)
    return 1;
  memcpy (save_x_local, info->x_local, sizeof save_x_local);
  memcpy (save_y_local, info->y_local, sizeof save_y_local);
  end = info->cur.local_count - 1;
  for (i = 0; i <= end; i++)
    {



      int max_swaps = end - i;


      if (!info->local_rvalue[i])
 continue;

      for (j = i + 1; j <= end; j++)
 {
   rtx tmp;

   if (!info->local_rvalue[j])
     continue;
   if (!reg_overlap_mentioned_p (info->x_local[i], info->y_local[j]))
     continue;
   if (--max_swaps < 0)
     {
       memcpy (info->x_local, save_x_local, sizeof save_x_local);
       memcpy (info->y_local, save_y_local, sizeof save_y_local);
       return 0;
     }
   nswaps++;
   tmp = info->x_local[i];
   info->x_local[i] = info->x_local[j];
   info->x_local[j] = tmp;
   tmp = info->y_local[i];
   info->y_local[i] = info->y_local[j];
   info->y_local[j] = tmp;
   j = i;
 }
    }
  info->had_input_conflict = 1;
  if (dump_file && nswaps)
    fprintf (dump_file, "Resolved input conflict, %d %s.\n",
      nswaps, nswaps == 1 ? "swap" : "swaps");
  return 1;
}
