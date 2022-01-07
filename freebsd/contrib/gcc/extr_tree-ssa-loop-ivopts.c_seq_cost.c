
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 int SET ;
 scalar_t__ rtx_cost (scalar_t__,int ) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static unsigned
seq_cost (rtx seq)
{
  unsigned cost = 0;
  rtx set;

  for (; seq; seq = NEXT_INSN (seq))
    {
      set = single_set (seq);
      if (set)
 cost += rtx_cost (set, SET);
      else
 cost++;
    }

  return cost;
}
