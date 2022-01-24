#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
typedef  int /*<<< orphan*/  UInt16 ;
typedef  int /*<<< orphan*/  UChar ;
struct TYPE_3__ {int nblock; int verbosity; int workFactor; int origPtr; int /*<<< orphan*/  arr2; int /*<<< orphan*/  arr1; scalar_t__* ftab; int /*<<< orphan*/ * block; scalar_t__* ptr; } ;
typedef  int Int32 ;
typedef  TYPE_1__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int BZ_N_OVERSHOOT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int,int,int*) ; 

void FUNC5 ( EState* s )
{
   UInt32* ptr    = s->ptr; 
   UChar*  block  = s->block;
   UInt32* ftab   = s->ftab;
   Int32   nblock = s->nblock;
   Int32   verb   = s->verbosity;
   Int32   wfact  = s->workFactor;
   UInt16* quadrant;
   Int32   budget;
   Int32   budgetInit;
   Int32   i;

   if (nblock < 10000) {
      FUNC3 ( s->arr1, s->arr2, ftab, nblock, verb );
   } else {
      /* Calculate the location for quadrant, remembering to get
         the alignment right.  Assumes that &(block[0]) is at least
         2-byte aligned -- this should be ok since block is really
         the first section of arr2.
      */
      i = nblock+BZ_N_OVERSHOOT;
      if (i & 1) i++;
      quadrant = (UInt16*)(&(block[i]));

      /* (wfact-1) / 3 puts the default-factor-30
         transition point at very roughly the same place as 
         with v0.1 and v0.9.0.  
         Not that it particularly matters any more, since the
         resulting compressed stream is now the same regardless
         of whether or not we use the main sort or fallback sort.
      */
      if (wfact < 1  ) wfact = 1;
      if (wfact > 100) wfact = 100;
      budgetInit = nblock * ((wfact-1) / 3);
      budget = budgetInit;

      FUNC4 ( ptr, block, quadrant, ftab, nblock, verb, &budget );
      if (verb >= 3) 
         FUNC2 ( "      %d work, %d block, ratio %5.2f\n",
                    budgetInit - budget,
                    nblock, 
                    (float)(budgetInit - budget) /
                    (float)(nblock==0 ? 1 : nblock) ); 
      if (budget < 0) {
         if (verb >= 2) 
            FUNC1 ( "    too repetitive; using fallback"
                       " sorting algorithm\n" );
         FUNC3 ( s->arr1, s->arr2, ftab, nblock, verb );
      }
   }

   s->origPtr = -1;
   for (i = 0; i < s->nblock; i++)
      if (ptr[i] == 0)
         { s->origPtr = i; break; };

   FUNC0( s->origPtr != -1, 1003 );
}