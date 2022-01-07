
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MATCH_DUP ;
 scalar_t__ MATCH_SCRATCH ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int max_insns_per_peep2 ;
 int walk_insn_part (int ,int,int ) ;

__attribute__((used)) static void
gen_peephole2 (rtx peep)
{
  int i, n;



  for (i = XVECLEN (peep, 0) - 1; i >= 0; --i)
    walk_insn_part (XVECEXP (peep, 0, i), 1, 0);


  for (i = XVECLEN (peep, 0) - 1, n = 0; i >= 0; --i)
    if (GET_CODE (XVECEXP (peep, 0, i)) != MATCH_DUP
 && GET_CODE (XVECEXP (peep, 0, i)) != MATCH_SCRATCH)
      n++;
  if (n > max_insns_per_peep2)
    max_insns_per_peep2 = n;
}
