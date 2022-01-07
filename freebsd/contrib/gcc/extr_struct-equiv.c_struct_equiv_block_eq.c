
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x_start; scalar_t__ y_start; int ninsns; int local_count; int input_valid; } ;
struct TYPE_5__ {scalar_t__ x_start; scalar_t__ ninsns; } ;
struct equiv_info {int mode; int need_rerun; int check_input_conflict; int had_input_conflict; int dying_inputs; TYPE_1__ cur; int * x_local; int * y_local; int y_local_live; int x_local_live; int input_reg; int y_input; int x_input; TYPE_2__ best_match; int y_block; int x_block; scalar_t__ y_end; scalar_t__ x_end; } ;
typedef scalar_t__ rtx ;
typedef int regset_head ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 int CLEAR_REG_SET (int *) ;
 int INIT_REG_SET (int *) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int STRUCT_EQUIV_FINAL ;
 int STRUCT_EQUIV_MATCH_JUMPS ;
 int STRUCT_EQUIV_NEED_FULL_BLOCK ;
 int STRUCT_EQUIV_START ;
 scalar_t__ any_condjump_p (scalar_t__) ;
 scalar_t__ assign_reg_reg_set (int *,int ,int) ;
 scalar_t__ bitmap_intersect_p (int ,int ) ;
 int cancel_changes (int ) ;
 int condjump_equiv_p (struct equiv_info*,int) ;
 int find_dying_inputs (struct equiv_info*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int insns_match_p (scalar_t__,scalar_t__,struct equiv_info*) ;
 scalar_t__ onlyjump_p (scalar_t__) ;
 int resolve_input_conflict (struct equiv_info*) ;
 scalar_t__ returnjump_p (scalar_t__) ;
 int side_effects_p (int ) ;
 int simplejump_p (scalar_t__) ;
 int struct_equiv_improve_checkpoint (TYPE_2__*,struct equiv_info*) ;
 int struct_equiv_init (int,struct equiv_info*) ;
 int struct_equiv_merge (scalar_t__,scalar_t__,struct equiv_info*) ;
 int struct_equiv_restore_checkpoint (TYPE_2__*,struct equiv_info*) ;

int
struct_equiv_block_eq (int mode, struct equiv_info *info)
{
  rtx x_stop, y_stop;
  rtx xi, yi;
  int i;

  if (mode & STRUCT_EQUIV_START)
    {
      x_stop = BB_HEAD (info->x_block);
      y_stop = BB_HEAD (info->y_block);
      if (!x_stop || !y_stop)
 return 0;
    }
  else
    {
      x_stop = info->cur.x_start;
      y_stop = info->cur.y_start;
    }
  if (!struct_equiv_init (mode, info))
    gcc_unreachable ();




  xi = BB_END (info->x_block);
  if (onlyjump_p (xi)
      || (returnjump_p (xi) && !side_effects_p (PATTERN (xi))))
    {
      info->cur.x_start = xi;
      xi = PREV_INSN (xi);
    }

  yi = BB_END (info->y_block);
  if (onlyjump_p (yi)
      || (returnjump_p (yi) && !side_effects_p (PATTERN (yi))))
    {
      info->cur.y_start = yi;



      if (!simplejump_p (yi) && !returnjump_p (yi) && info->cur.x_start)
 info->cur.ninsns++;
      yi = PREV_INSN (yi);
    }

  if (mode & STRUCT_EQUIV_MATCH_JUMPS)
    {


      gcc_assert (!info->cur.x_start == !info->cur.y_start);
      if (info->cur.x_start)
 {
   if (any_condjump_p (info->cur.x_start)
       ? !condjump_equiv_p (info, 0)
       : !insns_match_p (info->cur.x_start, info->cur.y_start, info))
     gcc_unreachable ();
 }
      else if (any_condjump_p (xi) && any_condjump_p (yi))
 {
   info->cur.x_start = xi;
   info->cur.y_start = yi;
   xi = PREV_INSN (xi);
   yi = PREV_INSN (yi);
   info->cur.ninsns++;
   if (!condjump_equiv_p (info, 0))
     gcc_unreachable ();
 }
      if (info->cur.x_start && info->mode & STRUCT_EQUIV_FINAL)
 struct_equiv_merge (info->cur.x_start, info->cur.y_start, info);
    }

  struct_equiv_improve_checkpoint (&info->best_match, info);
  info->x_end = xi;
  info->y_end = yi;
  if (info->cur.x_start != x_stop)
    for (;;)
      {

 while (!INSN_P (xi) && xi != x_stop)
   xi = PREV_INSN (xi);

 while (!INSN_P (yi) && yi != y_stop)
   yi = PREV_INSN (yi);

 if (!insns_match_p (xi, yi, info))
   break;
 if (INSN_P (xi))
   {
     if (info->mode & STRUCT_EQUIV_FINAL)
       struct_equiv_merge (xi, yi, info);
     info->cur.ninsns++;
     struct_equiv_improve_checkpoint (&info->best_match, info);
   }
 if (xi == x_stop || yi == y_stop)
   {




     if (info->best_match.x_start != info->cur.x_start
  && (xi == BB_HEAD (info->x_block)
      || yi == BB_HEAD (info->y_block)))
       {
  info->cur.ninsns++;
  struct_equiv_improve_checkpoint (&info->best_match, info);
  info->cur.ninsns--;
  if (info->best_match.ninsns > info->cur.ninsns)
    info->best_match.ninsns = info->cur.ninsns;
       }
     break;
   }
 xi = PREV_INSN (xi);
 yi = PREV_INSN (yi);
      }



  cancel_changes (0);


  struct_equiv_restore_checkpoint (&info->best_match, info);




  if (info->cur.ninsns)
    {
      xi = info->cur.x_start;
      yi = info->cur.y_start;
      while (xi != x_stop && !INSN_P (PREV_INSN (xi)))
 xi = PREV_INSN (xi);

      while (yi != y_stop && !INSN_P (PREV_INSN (yi)))
 yi = PREV_INSN (yi);

      info->cur.x_start = xi;
      info->cur.y_start = yi;
    }

  if (!info->cur.input_valid)
    info->x_input = info->y_input = info->input_reg = NULL_RTX;
  if (!info->need_rerun)
    {
      find_dying_inputs (info);
      if (info->mode & STRUCT_EQUIV_FINAL)
 {
   if (info->check_input_conflict && ! resolve_input_conflict (info))
     gcc_unreachable ();
 }
      else
 {
   bool input_conflict = info->had_input_conflict;

   if (!input_conflict
       && info->dying_inputs > 1
       && bitmap_intersect_p (info->x_local_live, info->y_local_live))
     {
       regset_head clobbered_regs;

       INIT_REG_SET (&clobbered_regs);
       for (i = 0; i < info->cur.local_count; i++)
  {
    if (assign_reg_reg_set (&clobbered_regs, info->y_local[i], 0))
      {
        input_conflict = 1;
        break;
      }
    assign_reg_reg_set (&clobbered_regs, info->x_local[i], 1);
  }
       CLEAR_REG_SET (&clobbered_regs);
     }
   if (input_conflict && !info->check_input_conflict)
     info->need_rerun = 1;
   info->check_input_conflict = input_conflict;
 }
    }

  if (info->mode & STRUCT_EQUIV_NEED_FULL_BLOCK
      && (info->cur.x_start != x_stop || info->cur.y_start != y_stop))
    return 0;
  return info->cur.ninsns;
}
