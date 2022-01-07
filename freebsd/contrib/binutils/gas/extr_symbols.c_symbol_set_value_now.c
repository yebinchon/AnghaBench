
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int S_SET_SEGMENT (int *,int ) ;
 int S_SET_VALUE (int *,int ) ;
 int frag_now ;
 int frag_now_fix () ;
 int now_seg ;
 int symbol_set_frag (int *,int ) ;

void
symbol_set_value_now (symbolS *sym)
{
  S_SET_SEGMENT (sym, now_seg);
  S_SET_VALUE (sym, frag_now_fix ());
  symbol_set_frag (sym, frag_now);
}
