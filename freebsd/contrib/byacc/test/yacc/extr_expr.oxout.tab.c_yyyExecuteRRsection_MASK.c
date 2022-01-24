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
typedef  int /*<<< orphan*/  yyyGNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long*,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yyyYok ; 

void FUNC5(yyyGNT *rootNode)  {
   int yyyi; 
   long cycleSum = 0; 
   long nNZrc = 0; 

   if (!yyyYok) return; 
   FUNC2(rootNode,&nNZrc,&cycleSum);
   if (nNZrc) 
      {
       FUNC1("\n\n\n**********\n",stderr);
       FUNC1("cycle detected in completed parse tree",stderr);
       FUNC1(" after decoration.\n",stderr);
#if CYCLE_VERBOSE
       fprintf(stderr,
               "number of unsolved attribute instances == %ld.\n", 
               nNZrc 
              ); 
       fprintf(stderr,
               "total number of remaining dependencies == %ld.\n", 
               cycleSum
              ); 
       fputs("average number of remaining dependencies\n",stderr);
       fprintf(stderr,"  per unsolved instance == %f.\n", 
               ((float)(cycleSum)/(float)(nNZrc)) 
              ); 
#endif
       FUNC0(stderr,
         "searching parse tree for %ld unsolved instances:\n",
               nNZrc
              );
       FUNC4(rootNode);
      }
   FUNC3(rootNode);
}