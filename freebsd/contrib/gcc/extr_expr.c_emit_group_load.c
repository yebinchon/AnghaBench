
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * rtx ;


 int * XEXP (int ,int ) ;
 int XVECEXP (int *,int ,int) ;
 int XVECLEN (int *,int ) ;
 int ** alloca (int) ;
 int emit_group_load_1 (int **,int *,int *,int ,int) ;
 int emit_move_insn (int *,int *) ;

void
emit_group_load (rtx dst, rtx src, tree type, int ssize)
{
  rtx *tmps;
  int i;

  tmps = alloca (sizeof (rtx) * XVECLEN (dst, 0));
  emit_group_load_1 (tmps, dst, src, type, ssize);


  for (i = 0; i < XVECLEN (dst, 0); i++)
    {
      rtx d = XEXP (XVECEXP (dst, 0, i), 0);
      if (d == ((void*)0))
 continue;
      emit_move_insn (d, tmps[i]);
    }
}
