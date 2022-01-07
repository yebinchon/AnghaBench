
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct opt_ext {int* o_bits2; int* o_bits3; int* o_bits4; int o_offset; int o_rndx; int * o_bits1; } ;
typedef int bfd ;
struct TYPE_3__ {int value; int rndx; int ot; } ;
typedef TYPE_1__ OPTR ;


 int H_PUT_32 (int *,int,int ) ;
 int OPT_BITS2_VALUE_SH_LEFT_BIG ;
 int OPT_BITS2_VALUE_SH_LEFT_LITTLE ;
 int OPT_BITS3_VALUE_SH_LEFT_BIG ;
 int OPT_BITS3_VALUE_SH_LEFT_LITTLE ;
 int OPT_BITS4_VALUE_SH_LEFT_BIG ;
 int OPT_BITS4_VALUE_SH_LEFT_LITTLE ;
 int _bfd_ecoff_swap_rndx_out (scalar_t__,int *,int *) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_opt_out (bfd *abfd, const OPTR *intern_copy, void * ext_ptr)
{
  struct opt_ext *ext = (struct opt_ext *) ext_ptr;
  OPTR intern[1];


  *intern = *intern_copy;

  if (bfd_header_big_endian (abfd))
    {
      ext->o_bits1[0] = intern->ot;
      ext->o_bits2[0] = intern->value >> OPT_BITS2_VALUE_SH_LEFT_BIG;
      ext->o_bits3[0] = intern->value >> OPT_BITS3_VALUE_SH_LEFT_BIG;
      ext->o_bits4[0] = intern->value >> OPT_BITS4_VALUE_SH_LEFT_BIG;
    }
  else
    {
      ext->o_bits1[0] = intern->ot;
      ext->o_bits2[0] = intern->value >> OPT_BITS2_VALUE_SH_LEFT_LITTLE;
      ext->o_bits3[0] = intern->value >> OPT_BITS3_VALUE_SH_LEFT_LITTLE;
      ext->o_bits4[0] = intern->value >> OPT_BITS4_VALUE_SH_LEFT_LITTLE;
    }

  _bfd_ecoff_swap_rndx_out (bfd_header_big_endian (abfd),
       &intern->rndx, &ext->o_rndx);

  H_PUT_32 (abfd, intern->value, ext->o_offset);





}
