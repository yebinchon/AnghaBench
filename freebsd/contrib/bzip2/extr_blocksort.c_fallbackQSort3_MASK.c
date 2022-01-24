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
typedef  scalar_t__ Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FALLBACK_QSORT_SMALL_THRESH ; 
 int FALLBACK_QSORT_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static
void FUNC8 ( UInt32* fmap, 
                      UInt32* eclass,
                      Int32   loSt, 
                      Int32   hiSt )
{
   Int32 unLo, unHi, ltLo, gtHi, n, m;
   Int32 sp, lo, hi;
   UInt32 med, r, r3;
   Int32 stackLo[FALLBACK_QSORT_STACK_SIZE];
   Int32 stackHi[FALLBACK_QSORT_STACK_SIZE];

   r = 0;

   sp = 0;
   FUNC5 ( loSt, hiSt );

   while (sp > 0) {

      FUNC1 ( sp < FALLBACK_QSORT_STACK_SIZE - 1, 1004 );

      FUNC4 ( lo, hi );
      if (hi - lo < FALLBACK_QSORT_SMALL_THRESH) {
         FUNC2 ( fmap, eclass, lo, hi );
         continue;
      }

      /* Random partitioning.  Median of 3 sometimes fails to
         avoid bad cases.  Median of 9 seems to help but 
         looks rather expensive.  This too seems to work but
         is cheaper.  Guidance for the magic constants 
         7621 and 32768 is taken from Sedgewick's algorithms
         book, chapter 35.
      */
      r = ((r * 7621) + 1) % 32768;
      r3 = r % 3;
      if (r3 == 0) med = eclass[fmap[lo]]; else
      if (r3 == 1) med = eclass[fmap[(lo+hi)>>1]]; else
                   med = eclass[fmap[hi]];

      unLo = ltLo = lo;
      unHi = gtHi = hi;

      while (1) {
         while (1) {
            if (unLo > unHi) break;
            n = (Int32)eclass[fmap[unLo]] - (Int32)med;
            if (n == 0) { 
               FUNC6(fmap[unLo], fmap[ltLo]); 
               ltLo++; unLo++; 
               continue; 
            };
            if (n > 0) break;
            unLo++;
         }
         while (1) {
            if (unLo > unHi) break;
            n = (Int32)eclass[fmap[unHi]] - (Int32)med;
            if (n == 0) { 
               FUNC6(fmap[unHi], fmap[gtHi]); 
               gtHi--; unHi--; 
               continue; 
            };
            if (n < 0) break;
            unHi--;
         }
         if (unLo > unHi) break;
         FUNC6(fmap[unLo], fmap[unHi]); unLo++; unHi--;
      }

      FUNC0 ( unHi == unLo-1, "fallbackQSort3(2)" );

      if (gtHi < ltLo) continue;

      n = FUNC3(ltLo-lo, unLo-ltLo); FUNC7(lo, unLo-n, n);
      m = FUNC3(hi-gtHi, gtHi-unHi); FUNC7(unLo, hi-m+1, m);

      n = lo + unLo - ltLo - 1;
      m = hi - (gtHi - unHi) + 1;

      if (n - lo > hi - m) {
         FUNC5 ( lo, n );
         FUNC5 ( m, hi );
      } else {
         FUNC5 ( m, hi );
         FUNC5 ( lo, n );
      }
   }
}