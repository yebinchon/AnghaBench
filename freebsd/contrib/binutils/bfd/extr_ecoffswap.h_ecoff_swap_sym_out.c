
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sym_ext {int* s_bits1; int* s_bits2; int* s_bits3; int* s_bits4; int s_value; int s_iss; } ;
typedef int bfd ;
struct TYPE_3__ {int st; int sc; int index; scalar_t__ reserved; int value; int iss; } ;
typedef TYPE_1__ SYMR ;


 int ECOFF_PUT_OFF (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int SYM_BITS1_SC_BIG ;
 int SYM_BITS1_SC_LITTLE ;
 int SYM_BITS1_SC_SH_LEFT_BIG ;
 int SYM_BITS1_SC_SH_LITTLE ;
 int SYM_BITS1_ST_BIG ;
 int SYM_BITS1_ST_LITTLE ;
 int SYM_BITS1_ST_SH_BIG ;
 int SYM_BITS1_ST_SH_LITTLE ;
 int SYM_BITS2_INDEX_BIG ;
 int SYM_BITS2_INDEX_LITTLE ;
 int SYM_BITS2_INDEX_SH_LEFT_BIG ;
 int SYM_BITS2_INDEX_SH_LITTLE ;
 int SYM_BITS2_RESERVED_BIG ;
 int SYM_BITS2_RESERVED_LITTLE ;
 int SYM_BITS2_SC_BIG ;
 int SYM_BITS2_SC_LITTLE ;
 int SYM_BITS2_SC_SH_BIG ;
 int SYM_BITS2_SC_SH_LEFT_LITTLE ;
 int SYM_BITS3_INDEX_SH_LEFT_BIG ;
 int SYM_BITS3_INDEX_SH_LEFT_LITTLE ;
 int SYM_BITS4_INDEX_SH_LEFT_BIG ;
 int SYM_BITS4_INDEX_SH_LEFT_LITTLE ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_sym_out (bfd *abfd, const SYMR *intern_copy, void * ext_ptr)
{
  struct sym_ext *ext = (struct sym_ext *) ext_ptr;
  SYMR intern[1];


  *intern = *intern_copy;

  H_PUT_32 (abfd, intern->iss, ext->s_iss);
  ECOFF_PUT_OFF (abfd, intern->value, ext->s_value);


  if (bfd_header_big_endian (abfd))
    {
      ext->s_bits1[0] = (((intern->st << SYM_BITS1_ST_SH_BIG)
     & SYM_BITS1_ST_BIG)
    | ((intern->sc >> SYM_BITS1_SC_SH_LEFT_BIG)
       & SYM_BITS1_SC_BIG));
      ext->s_bits2[0] = (((intern->sc << SYM_BITS2_SC_SH_BIG)
     & SYM_BITS2_SC_BIG)
    | (intern->reserved ? SYM_BITS2_RESERVED_BIG : 0)
    | ((intern->index >> SYM_BITS2_INDEX_SH_LEFT_BIG)
       & SYM_BITS2_INDEX_BIG));
      ext->s_bits3[0] = (intern->index >> SYM_BITS3_INDEX_SH_LEFT_BIG) & 0xff;
      ext->s_bits4[0] = (intern->index >> SYM_BITS4_INDEX_SH_LEFT_BIG) & 0xff;
    }
  else
    {
      ext->s_bits1[0] = (((intern->st << SYM_BITS1_ST_SH_LITTLE)
     & SYM_BITS1_ST_LITTLE)
    | ((intern->sc << SYM_BITS1_SC_SH_LITTLE)
       & SYM_BITS1_SC_LITTLE));
      ext->s_bits2[0] = (((intern->sc >> SYM_BITS2_SC_SH_LEFT_LITTLE)
     & SYM_BITS2_SC_LITTLE)
    | (intern->reserved ? SYM_BITS2_RESERVED_LITTLE : 0)
    | ((intern->index << SYM_BITS2_INDEX_SH_LITTLE)
       & SYM_BITS2_INDEX_LITTLE));
      ext->s_bits3[0] = (intern->index >> SYM_BITS3_INDEX_SH_LEFT_LITTLE) & 0xff;
      ext->s_bits4[0] = (intern->index >> SYM_BITS4_INDEX_SH_LEFT_LITTLE) & 0xff;
    }





}
