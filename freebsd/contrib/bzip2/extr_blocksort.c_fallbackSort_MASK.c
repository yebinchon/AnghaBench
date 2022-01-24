#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UInt32 ;
typedef  size_t UChar ;
typedef  int Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int,int) ; 

__attribute__((used)) static
void FUNC9 ( UInt32* fmap, 
                    UInt32* eclass, 
                    UInt32* bhtab,
                    Int32   nblock,
                    Int32   verb )
{
   Int32 ftab[257];
   Int32 ftabCopy[256];
   Int32 H, i, j, k, l, r, cc, cc1;
   Int32 nNotDone;
   Int32 nBhtab;
   UChar* eclass8 = (UChar*)eclass;

   /*--
      Initial 1-char radix sort to generate
      initial fmap and initial BH bits.
   --*/
   if (verb >= 4)
      FUNC5 ( "        bucket sorting ...\n" );
   for (i = 0; i < 257;    i++) ftab[i] = 0;
   for (i = 0; i < nblock; i++) ftab[eclass8[i]]++;
   for (i = 0; i < 256;    i++) ftabCopy[i] = ftab[i];
   for (i = 1; i < 257;    i++) ftab[i] += ftab[i-1];

   for (i = 0; i < nblock; i++) {
      j = eclass8[i];
      k = ftab[j] - 1;
      ftab[j] = k;
      fmap[k] = i;
   }

   nBhtab = 2 + (nblock / 32);
   for (i = 0; i < nBhtab; i++) bhtab[i] = 0;
   for (i = 0; i < 256; i++) FUNC3(ftab[i]);

   /*--
      Inductively refine the buckets.  Kind-of an
      "exponential radix sort" (!), inspired by the
      Manber-Myers suffix array construction algorithm.
   --*/

   /*-- set sentinel bits for block-end detection --*/
   for (i = 0; i < 32; i++) { 
      FUNC3(nblock + 2*i);
      FUNC1(nblock + 2*i + 1);
   }

   /*-- the log(N) loop --*/
   H = 1;
   while (1) {

      if (verb >= 4) 
         FUNC6 ( "        depth %6d has ", H );

      j = 0;
      for (i = 0; i < nblock; i++) {
         if (FUNC2(i)) j = i;
         k = fmap[i] - H; if (k < 0) k += nblock;
         eclass[k] = j;
      }

      nNotDone = 0;
      r = -1;
      while (1) {

	 /*-- find the next non-singleton bucket --*/
         k = r + 1;
         while (FUNC2(k) && FUNC4(k)) k++;
         if (FUNC2(k)) {
            while (FUNC7(k) == 0xffffffff) k += 32;
            while (FUNC2(k)) k++;
         }
         l = k - 1;
         if (l >= nblock) break;
         while (!FUNC2(k) && FUNC4(k)) k++;
         if (!FUNC2(k)) {
            while (FUNC7(k) == 0x00000000) k += 32;
            while (!FUNC2(k)) k++;
         }
         r = k - 1;
         if (r >= nblock) break;

         /*-- now [l, r] bracket current bucket --*/
         if (r > l) {
            nNotDone += (r - l + 1);
            FUNC8 ( fmap, eclass, l, r );

            /*-- scan bucket and generate header bits-- */
            cc = -1;
            for (i = l; i <= r; i++) {
               cc1 = eclass[fmap[i]];
               if (cc != cc1) { FUNC3(i); cc = cc1; };
            }
         }
      }

      if (verb >= 4) 
         FUNC6 ( "%6d unresolved strings\n", nNotDone );

      H *= 2;
      if (H > nblock || nNotDone == 0) break;
   }

   /*-- 
      Reconstruct the original block in
      eclass8 [0 .. nblock-1], since the
      previous phase destroyed it.
   --*/
   if (verb >= 4)
      FUNC5 ( "        reconstructing block ...\n" );
   j = 0;
   for (i = 0; i < nblock; i++) {
      while (ftabCopy[j] == 0) j++;
      ftabCopy[j]--;
      eclass8[fmap[i]] = (UChar)j;
   }
   FUNC0 ( j < 256, 1005 );
}