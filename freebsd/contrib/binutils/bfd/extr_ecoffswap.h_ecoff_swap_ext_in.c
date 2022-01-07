
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext_ext {int* es_bits1; int es_asym; int es_ifd; } ;
typedef int bfd ;
struct TYPE_3__ {int jmptbl; int cobol_main; int weakext; int asym; int ifd; scalar_t__ reserved; } ;
typedef TYPE_1__ EXTR ;


 int EXT_BITS1_COBOL_MAIN_BIG ;
 int EXT_BITS1_COBOL_MAIN_LITTLE ;
 int EXT_BITS1_JMPTBL_BIG ;
 int EXT_BITS1_JMPTBL_LITTLE ;
 int EXT_BITS1_WEAKEXT_BIG ;
 int EXT_BITS1_WEAKEXT_LITTLE ;
 int H_GET_S16 (int *,int ) ;
 int H_GET_S32 (int *,int ) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 int ecoff_swap_sym_in (int *,int *,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_ext_in (bfd *abfd, void * ext_copy, EXTR *intern)
{
  struct ext_ext ext[1];

  *ext = *(struct ext_ext *) ext_copy;


  if (bfd_header_big_endian (abfd))
    {
      intern->jmptbl = 0 != (ext->es_bits1[0] & EXT_BITS1_JMPTBL_BIG);
      intern->cobol_main = 0 != (ext->es_bits1[0] & EXT_BITS1_COBOL_MAIN_BIG);
      intern->weakext = 0 != (ext->es_bits1[0] & EXT_BITS1_WEAKEXT_BIG);
    }
  else
    {
      intern->jmptbl = 0 != (ext->es_bits1[0] & EXT_BITS1_JMPTBL_LITTLE);
      intern->cobol_main = 0 != (ext->es_bits1[0] & EXT_BITS1_COBOL_MAIN_LITTLE);
      intern->weakext = 0 != (ext->es_bits1[0] & EXT_BITS1_WEAKEXT_LITTLE);
    }
  intern->reserved = 0;
  ecoff_swap_sym_in (abfd, &ext->es_asym, &intern->asym);





}
