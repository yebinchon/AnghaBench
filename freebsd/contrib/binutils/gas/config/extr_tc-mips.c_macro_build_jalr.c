
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expressionS ;
struct TYPE_3__ {int fr_literal; } ;


 int BFD_RELOC_MIPS_JALR ;
 int FALSE ;
 scalar_t__ HAVE_NEWABI ;
 int PIC_CALL_REG ;
 int RA ;
 int fix_new_exp (TYPE_1__*,char*,int,int *,int ,int ) ;
 int frag_grow (int) ;
 char* frag_more (int ) ;
 TYPE_1__* frag_now ;
 int macro_build (int *,char*,char*,int ,int ) ;

__attribute__((used)) static void
macro_build_jalr (expressionS *ep)
{
  char *f = ((void*)0);

  if (HAVE_NEWABI)
    {
      frag_grow (8);
      f = frag_more (0);
    }
  macro_build (((void*)0), "jalr", "d,s", RA, PIC_CALL_REG);
  if (HAVE_NEWABI)
    fix_new_exp (frag_now, f - frag_now->fr_literal,
   4, ep, FALSE, BFD_RELOC_MIPS_JALR);
}
