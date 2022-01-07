
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 size_t TOC_REGISTER ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_MINUS (int ,int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,size_t) ;
 int gen_rtx_SYMBOL_REF (int ,int ) ;
 scalar_t__ no_new_pseudos ;
 int* regs_ever_live ;
 int toc_label_name ;

rtx
create_TOC_reference (rtx symbol)
{
  if (no_new_pseudos)
    regs_ever_live[TOC_REGISTER] = 1;
  return gen_rtx_PLUS (Pmode,
    gen_rtx_REG (Pmode, TOC_REGISTER),
      gen_rtx_CONST (Pmode,
        gen_rtx_MINUS (Pmode, symbol,
   gen_rtx_SYMBOL_REF (Pmode, toc_label_name))));
}
