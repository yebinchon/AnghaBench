
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pas_read (int) ;
 int pas_write (int,int) ;
 int pcm_bits ;
 int pcm_bitsok ;

__attribute__((used)) static int pcm_set_bits(int arg)
{
 if (arg == 0)
  return pcm_bits;

 if ((arg & pcm_bitsok) != arg)
  return pcm_bits;

 if (arg != pcm_bits)
 {
  pas_write(pas_read(0x8389) ^ 0x04, 0x8389);

  pcm_bits = arg;
 }
 return pcm_bits;
}
