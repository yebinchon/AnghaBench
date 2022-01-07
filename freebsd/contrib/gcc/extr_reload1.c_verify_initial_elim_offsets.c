
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {scalar_t__ initial_offset; int to; int from; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 int INITIAL_ELIMINATION_OFFSET (int ,int ,scalar_t__) ;
 int INITIAL_FRAME_POINTER_OFFSET (scalar_t__) ;
 size_t NUM_ELIMINABLE_REGS ;
 int num_eliminable ;
 struct elim_table* reg_eliminate ;

__attribute__((used)) static bool
verify_initial_elim_offsets (void)
{
  HOST_WIDE_INT t;

  if (!num_eliminable)
    return 1;
  INITIAL_FRAME_POINTER_OFFSET (t);
  if (t != reg_eliminate[0].initial_offset)
    return 0;


  return 1;
}
