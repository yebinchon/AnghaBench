
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fragS ;
typedef int expressionS ;


 int BFD_RELOC_16 ;
 int BFD_RELOC_32 ;
 int BFD_RELOC_64 ;
 int fix_new_exp (int *,int,int,int *,int ,int) ;
 int get_arc_exp_reloc_type (int,int,int *,int *) ;

void
arc_cons_fix_new (fragS *frag,
    int where,
    int nbytes,
    expressionS *exp)
{
  if (nbytes == 4)
    {
      int reloc_type;
      expressionS exptmp;


      reloc_type = get_arc_exp_reloc_type (1, BFD_RELOC_32, exp, &exptmp);
      fix_new_exp (frag, where, nbytes, &exptmp, 0, reloc_type);
    }
  else
    {
      fix_new_exp (frag, where, nbytes, exp, 0,
     nbytes == 2 ? BFD_RELOC_16
     : nbytes == 8 ? BFD_RELOC_64
     : BFD_RELOC_32);
    }
}
