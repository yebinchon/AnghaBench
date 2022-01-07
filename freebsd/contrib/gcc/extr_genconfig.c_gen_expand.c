
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 scalar_t__ clobbers_seen_this_insn ;
 scalar_t__ max_clobbers_per_insn ;
 int walk_insn_part (int ,int ,int ) ;

__attribute__((used)) static void
gen_expand (rtx insn)
{
  int i;





  if (XVEC (insn, 1) != 0)
    for (i = 0; i < XVECLEN (insn, 1); i++)
      {



 clobbers_seen_this_insn = 0;

 walk_insn_part (XVECEXP (insn, 1, i), 0, 0);

 if (clobbers_seen_this_insn > max_clobbers_per_insn)
   max_clobbers_per_insn = clobbers_seen_this_insn;
      }
}
