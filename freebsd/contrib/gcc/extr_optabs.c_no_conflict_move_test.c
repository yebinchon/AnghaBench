
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct no_conflict_data {int must_stay; scalar_t__ insn; scalar_t__ first; int target; } ;
typedef int rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int USE ;
 scalar_t__ find_reg_fusage (scalar_t__,int ,int ) ;
 scalar_t__ modified_between_p (int ,scalar_t__,scalar_t__) ;
 scalar_t__ modified_in_p (int ,scalar_t__) ;
 scalar_t__ reg_overlap_mentioned_p (int ,int ) ;
 scalar_t__ reg_used_between_p (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
no_conflict_move_test (rtx dest, rtx set, void *p0)
{
  struct no_conflict_data *p= p0;


  if (reg_overlap_mentioned_p (p->target, dest))
    p->must_stay = 1;


  else if (p->insn == p->first)
    return;


  else if (reg_overlap_mentioned_p (dest, PATTERN (p->first))
    || (CALL_P (p->first) && (find_reg_fusage (p->first, USE, dest)))
    || reg_used_between_p (dest, p->first, p->insn)






    || (GET_CODE (set) == SET
        && (modified_in_p (SET_SRC (set), p->first)
     || modified_in_p (SET_DEST (set), p->first)
     || modified_between_p (SET_SRC (set), p->first, p->insn)
     || modified_between_p (SET_DEST (set), p->first, p->insn))))
    p->must_stay = 1;
}
