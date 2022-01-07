
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ BB_END (int ) ;
 scalar_t__ next_nonnote_insn (scalar_t__) ;
 scalar_t__ tablejump_p (scalar_t__,int *,scalar_t__*) ;

rtx
get_last_bb_insn (basic_block bb)
{
  rtx tmp;
  rtx end = BB_END (bb);


  if (tablejump_p (end, ((void*)0), &tmp))
    end = tmp;


  tmp = next_nonnote_insn (end);
  while (tmp && BARRIER_P (tmp))
    {
      end = tmp;
      tmp = next_nonnote_insn (end);
    }

  return end;
}
