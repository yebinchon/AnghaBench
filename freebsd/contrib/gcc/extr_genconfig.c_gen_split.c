
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int) ;
 int max_insns_per_split ;
 int walk_insn_part (int ,int,int ) ;

__attribute__((used)) static void
gen_split (rtx split)
{
  int i;



  for (i = 0; i < XVECLEN (split, 0); i++)
    walk_insn_part (XVECEXP (split, 0, i), 1, 0);

  if (XVECLEN (split, 2) > max_insns_per_split)
    max_insns_per_split = XVECLEN (split, 2);
}
