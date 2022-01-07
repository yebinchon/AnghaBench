
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt32 ;
typedef scalar_t__ UChar ;
struct TYPE_6__ {scalar_t__ mode; scalar_t__ nblock; scalar_t__ nblockMAX; scalar_t__ avail_in_expect; TYPE_1__* strm; } ;
struct TYPE_5__ {scalar_t__ avail_in; scalar_t__ total_in_lo32; int total_in_hi32; scalar_t__ next_in; } ;
typedef TYPE_2__ EState ;
typedef scalar_t__ Bool ;


 int ADD_CHAR_TO_BLOCK (TYPE_2__*,int ) ;
 scalar_t__ BZ_M_RUNNING ;
 scalar_t__ False ;
 scalar_t__ True ;

__attribute__((used)) static
Bool copy_input_until_stop ( EState* s )
{
   Bool progress_in = False;

   if (s->mode == BZ_M_RUNNING) {


      while (True) {

         if (s->nblock >= s->nblockMAX) break;

         if (s->strm->avail_in == 0) break;
         progress_in = True;
         ADD_CHAR_TO_BLOCK ( s, (UInt32)(*((UChar*)(s->strm->next_in))) );
         s->strm->next_in++;
         s->strm->avail_in--;
         s->strm->total_in_lo32++;
         if (s->strm->total_in_lo32 == 0) s->strm->total_in_hi32++;
      }

   } else {


      while (True) {

         if (s->nblock >= s->nblockMAX) break;

         if (s->strm->avail_in == 0) break;

         if (s->avail_in_expect == 0) break;
         progress_in = True;
         ADD_CHAR_TO_BLOCK ( s, (UInt32)(*((UChar*)(s->strm->next_in))) );
         s->strm->next_in++;
         s->strm->avail_in--;
         s->strm->total_in_lo32++;
         if (s->strm->total_in_lo32 == 0) s->strm->total_in_hi32++;
         s->avail_in_expect--;
      }
   }
   return progress_in;
}
