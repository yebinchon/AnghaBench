
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct opt_ext {int* o_bits2; int* o_bits3; int* o_bits4; int o_offset; int o_rndx; int * o_bits1; } ;
typedef int bfd ;
struct TYPE_3__ {unsigned int value; int offset; int rndx; int ot; } ;
typedef TYPE_1__ OPTR ;


 int H_GET_32 (int *,int ) ;
 unsigned int OPT_BITS2_VALUE_SH_LEFT_BIG ;
 int OPT_BITS2_VALUE_SH_LEFT_LITTLE ;
 int _bfd_ecoff_swap_rndx_in (scalar_t__,int *,int *) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_opt_in (bfd *abfd, void * ext_copy, OPTR * intern)
{
  struct opt_ext ext[1];

  *ext = *(struct opt_ext *) ext_copy;

  if (bfd_header_big_endian (abfd))
    {
      intern->ot = ext->o_bits1[0];
      intern->value = (((unsigned int) ext->o_bits2[0]
   << OPT_BITS2_VALUE_SH_LEFT_BIG)
         | ((unsigned int) ext->o_bits3[0]
     << OPT_BITS2_VALUE_SH_LEFT_BIG)
         | ((unsigned int) ext->o_bits4[0]
     << OPT_BITS2_VALUE_SH_LEFT_BIG));
    }
  else
    {
      intern->ot = ext->o_bits1[0];
      intern->value = ((ext->o_bits2[0] << OPT_BITS2_VALUE_SH_LEFT_LITTLE)
         | (ext->o_bits3[0] << OPT_BITS2_VALUE_SH_LEFT_LITTLE)
         | (ext->o_bits4[0] << OPT_BITS2_VALUE_SH_LEFT_LITTLE));
    }

  _bfd_ecoff_swap_rndx_in (bfd_header_big_endian (abfd),
      &ext->o_rndx, &intern->rndx);

  intern->offset = H_GET_32 (abfd, ext->o_offset);





}
