#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int UChar ;
struct TYPE_11__ {size_t nblock; int blockCRC; int combinedCRC; int blockNo; int verbosity; int* zbits; int /*<<< orphan*/  origPtr; scalar_t__ blockSize100k; scalar_t__ arr2; scalar_t__ numZ; } ;
typedef  TYPE_1__ EState ;
typedef  scalar_t__ Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ BZ_HDR_0 ; 
 int BZ_HDR_B ; 
 int BZ_HDR_Z ; 
 int BZ_HDR_h ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11 ( EState* s, Bool is_last_block )
{
   if (s->nblock > 0) {

      FUNC2 ( s->blockCRC );
      s->combinedCRC = (s->combinedCRC << 1) | (s->combinedCRC >> 31);
      s->combinedCRC ^= s->blockCRC;
      if (s->blockNo > 1) s->numZ = 0;

      if (s->verbosity >= 2)
         FUNC4( "    block %d: crc = 0x%08x, "
                   "combined CRC = 0x%08x, size = %d\n",
                   s->blockNo, s->blockCRC, s->combinedCRC, s->nblock );

      FUNC0 ( s );
   }

   s->zbits = (UChar*) (&((UChar*)s->arr2)[s->nblock]);

   /*-- If this is the first block, create the stream header. --*/
   if (s->blockNo == 1) {
      FUNC1 ( s );
      FUNC6 ( s, BZ_HDR_B );
      FUNC6 ( s, BZ_HDR_Z );
      FUNC6 ( s, BZ_HDR_h );
      FUNC6 ( s, (UChar)(BZ_HDR_0 + s->blockSize100k) );
   }

   if (s->nblock > 0) {

      FUNC6 ( s, 0x31 ); FUNC6 ( s, 0x41 );
      FUNC6 ( s, 0x59 ); FUNC6 ( s, 0x26 );
      FUNC6 ( s, 0x53 ); FUNC6 ( s, 0x59 );

      /*-- Now the block's CRC, so it is in a known place. --*/
      FUNC7 ( s, s->blockCRC );

      /*-- 
         Now a single bit indicating (non-)randomisation. 
         As of version 0.9.5, we use a better sorting algorithm
         which makes randomisation unnecessary.  So always set
         the randomised bit to 'no'.  Of course, the decoder
         still needs to be able to handle randomised blocks
         so as to maintain backwards compatibility with
         older versions of bzip2.
      --*/
      FUNC8(s,1,0);

      FUNC8 ( s, 24, s->origPtr );
      FUNC9 ( s );
      FUNC10 ( s );
   }


   /*-- If this is the last block, add the stream trailer. --*/
   if (is_last_block) {

      FUNC6 ( s, 0x17 ); FUNC6 ( s, 0x72 );
      FUNC6 ( s, 0x45 ); FUNC6 ( s, 0x38 );
      FUNC6 ( s, 0x50 ); FUNC6 ( s, 0x90 );
      FUNC7 ( s, s->combinedCRC );
      if (s->verbosity >= 2)
         FUNC3( "    final combined CRC = 0x%08x\n   ", s->combinedCRC );
      FUNC5 ( s );
   }
}