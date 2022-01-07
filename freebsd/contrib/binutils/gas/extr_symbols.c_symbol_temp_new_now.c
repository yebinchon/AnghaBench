
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int frag_now ;
 int frag_now_fix () ;
 int now_seg ;
 int * symbol_temp_new (int ,int ,int ) ;

symbolS *
symbol_temp_new_now (void)
{
  return symbol_temp_new (now_seg, frag_now_fix (), frag_now);
}
