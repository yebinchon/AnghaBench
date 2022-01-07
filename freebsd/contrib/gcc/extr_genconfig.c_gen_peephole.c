
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int walk_insn_part (int ,int,int ) ;

__attribute__((used)) static void
gen_peephole (rtx peep)
{
  int i;



  for (i = 0; i < XVECLEN (peep, 0); i++)
    walk_insn_part (XVECEXP (peep, 0, i), 1, 0);
}
