
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext_ext {int* es_bits1; int es_asym; int es_ifd; scalar_t__* es_bits2; } ;
typedef int bfd ;
struct TYPE_3__ {int asym; int ifd; scalar_t__ weakext; scalar_t__ cobol_main; scalar_t__ jmptbl; } ;
typedef TYPE_1__ EXTR ;


 int EXT_BITS1_COBOL_MAIN_BIG ;
 int EXT_BITS1_COBOL_MAIN_LITTLE ;
 int EXT_BITS1_JMPTBL_BIG ;
 int EXT_BITS1_JMPTBL_LITTLE ;
 int EXT_BITS1_WEAKEXT_BIG ;
 int EXT_BITS1_WEAKEXT_LITTLE ;
 int H_PUT_S16 (int *,int ,int ) ;
 int H_PUT_S32 (int *,int ,int ) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 int ecoff_swap_sym_out (int *,int *,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_ext_out (bfd *abfd, const EXTR *intern_copy, void * ext_ptr)
{
  struct ext_ext *ext = (struct ext_ext *) ext_ptr;
  EXTR intern[1];


  *intern = *intern_copy;


  if (bfd_header_big_endian (abfd))
    {
      ext->es_bits1[0] = ((intern->jmptbl ? EXT_BITS1_JMPTBL_BIG : 0)
     | (intern->cobol_main ? EXT_BITS1_COBOL_MAIN_BIG : 0)
     | (intern->weakext ? EXT_BITS1_WEAKEXT_BIG : 0));
      ext->es_bits2[0] = 0;




    }
  else
    {
      ext->es_bits1[0] = ((intern->jmptbl ? EXT_BITS1_JMPTBL_LITTLE : 0)
     | (intern->cobol_main ? EXT_BITS1_COBOL_MAIN_LITTLE : 0)
     | (intern->weakext ? EXT_BITS1_WEAKEXT_LITTLE : 0));
      ext->es_bits2[0] = 0;




    }
  ecoff_swap_sym_out (abfd, &intern->asym, &ext->es_asym);





}
