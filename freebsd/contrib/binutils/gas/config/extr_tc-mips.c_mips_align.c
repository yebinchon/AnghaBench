
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;


 scalar_t__ S_GET_SEGMENT (int *) ;
 int S_SET_VALUE (int *,int ) ;
 int assert (int) ;
 int frag_align (int,int,int ) ;
 int frag_now ;
 scalar_t__ frag_now_fix () ;
 int mips_emit_delays () ;
 scalar_t__ now_seg ;
 int record_alignment (scalar_t__,int) ;
 int symbol_set_frag (int *,int ) ;

__attribute__((used)) static void
mips_align (int to, int fill, symbolS *label)
{
  mips_emit_delays ();
  frag_align (to, fill, 0);
  record_alignment (now_seg, to);
  if (label != ((void*)0))
    {
      assert (S_GET_SEGMENT (label) == now_seg);
      symbol_set_frag (label, frag_now);
      S_SET_VALUE (label, (valueT) frag_now_fix ());
    }
}
