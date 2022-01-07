
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int UChar ;
struct TYPE_11__ {size_t nblock; int blockCRC; int combinedCRC; int blockNo; int verbosity; int* zbits; int origPtr; scalar_t__ blockSize100k; scalar_t__ arr2; scalar_t__ numZ; } ;
typedef TYPE_1__ EState ;
typedef scalar_t__ Bool ;


 int BZ2_blockSort (TYPE_1__*) ;
 int BZ2_bsInitWrite (TYPE_1__*) ;
 int BZ_FINALISE_CRC (int) ;
 scalar_t__ BZ_HDR_0 ;
 int BZ_HDR_B ;
 int BZ_HDR_Z ;
 int BZ_HDR_h ;
 int VPrintf1 (char*,int) ;
 int VPrintf4 (char*,int,int,int,size_t) ;
 int bsFinishWrite (TYPE_1__*) ;
 int bsPutUChar (TYPE_1__*,int) ;
 int bsPutUInt32 (TYPE_1__*,int) ;
 int bsW (TYPE_1__*,int,int ) ;
 int generateMTFValues (TYPE_1__*) ;
 int sendMTFValues (TYPE_1__*) ;

void BZ2_compressBlock ( EState* s, Bool is_last_block )
{
   if (s->nblock > 0) {

      BZ_FINALISE_CRC ( s->blockCRC );
      s->combinedCRC = (s->combinedCRC << 1) | (s->combinedCRC >> 31);
      s->combinedCRC ^= s->blockCRC;
      if (s->blockNo > 1) s->numZ = 0;

      if (s->verbosity >= 2)
         VPrintf4( "    block %d: crc = 0x%08x, "
                   "combined CRC = 0x%08x, size = %d\n",
                   s->blockNo, s->blockCRC, s->combinedCRC, s->nblock );

      BZ2_blockSort ( s );
   }

   s->zbits = (UChar*) (&((UChar*)s->arr2)[s->nblock]);


   if (s->blockNo == 1) {
      BZ2_bsInitWrite ( s );
      bsPutUChar ( s, BZ_HDR_B );
      bsPutUChar ( s, BZ_HDR_Z );
      bsPutUChar ( s, BZ_HDR_h );
      bsPutUChar ( s, (UChar)(BZ_HDR_0 + s->blockSize100k) );
   }

   if (s->nblock > 0) {

      bsPutUChar ( s, 0x31 ); bsPutUChar ( s, 0x41 );
      bsPutUChar ( s, 0x59 ); bsPutUChar ( s, 0x26 );
      bsPutUChar ( s, 0x53 ); bsPutUChar ( s, 0x59 );


      bsPutUInt32 ( s, s->blockCRC );
      bsW(s,1,0);

      bsW ( s, 24, s->origPtr );
      generateMTFValues ( s );
      sendMTFValues ( s );
   }



   if (is_last_block) {

      bsPutUChar ( s, 0x17 ); bsPutUChar ( s, 0x72 );
      bsPutUChar ( s, 0x45 ); bsPutUChar ( s, 0x38 );
      bsPutUChar ( s, 0x50 ); bsPutUChar ( s, 0x90 );
      bsPutUInt32 ( s, s->combinedCRC );
      if (s->verbosity >= 2)
         VPrintf1( "    final combined CRC = 0x%08x\n   ", s->combinedCRC );
      bsFinishWrite ( s );
   }
}
