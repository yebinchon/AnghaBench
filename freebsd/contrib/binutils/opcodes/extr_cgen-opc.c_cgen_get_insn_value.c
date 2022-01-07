
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_3__ {scalar_t__ insn_endian; int insn_chunk_bitsize; } ;
typedef int CGEN_INSN_INT ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 scalar_t__ CGEN_ENDIAN_BIG ;
 int abort () ;
 int bfd_get_bits (unsigned char*,int,int) ;

CGEN_INSN_INT
cgen_get_insn_value (CGEN_CPU_DESC cd, unsigned char *buf, int length)
{
  int big_p = (cd->insn_endian == CGEN_ENDIAN_BIG);
  int insn_chunk_bitsize = cd->insn_chunk_bitsize;
  CGEN_INSN_INT value = 0;

  if (insn_chunk_bitsize != 0 && insn_chunk_bitsize < length)
    {


      int i;


      if ((length % insn_chunk_bitsize) != 0)
 abort ();

      for (i = 0; i < length; i += insn_chunk_bitsize)
 {
   int index;
   bfd_vma this_value;
   index = i;
   this_value = bfd_get_bits (& buf[index / 8], insn_chunk_bitsize, big_p);
   value = (value << insn_chunk_bitsize) | this_value;
 }
    }
  else
    {
      value = bfd_get_bits (buf, length, cd->insn_endian == CGEN_ENDIAN_BIG);
    }

  return value;
}
