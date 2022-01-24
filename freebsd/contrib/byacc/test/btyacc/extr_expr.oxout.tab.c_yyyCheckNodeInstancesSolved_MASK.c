#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* noderef; } ;
struct TYPE_7__ {int prodNum; int whichSym; scalar_t__* refCountList; TYPE_2__ parent; int /*<<< orphan*/  parentIsStack; } ;
typedef  TYPE_3__ yyyGNT ;
struct TYPE_5__ {int prodNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int,int,int) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int) ; 

void FUNC7(yyyGNT *np)
  {int mysort,sortSize,i,prodNum,symPos,inTerminalNode;
   int nUnsolvedInsts = 0;

   if (np->prodNum != 0)
     {inTerminalNode = 0;
      prodNum = np->prodNum;
      symPos = 0;
     }
   else
     {inTerminalNode = 1;
      prodNum = np->parent.noderef->prodNum;
      symPos = np->whichSym;
     }
   mysort = FUNC6(prodNum,symPos);
   sortSize = FUNC5(mysort);
   for (i=0; i<sortSize; i++)
     if ((np->refCountList)[i] != 0) nUnsolvedInsts += 1;
   if (nUnsolvedInsts)
     {FUNC0(stderr,
      "\nFound node that has %d unsolved attribute instance(s).\n",
              nUnsolvedInsts
             );
      FUNC0(stderr,"Node is labeled \"%s\".\n",
             FUNC3(prodNum,symPos));
      if (inTerminalNode)
        {FUNC1("Node is terminal.  Its parent production is:\n  ",stderr);
         FUNC4(prodNum);
        }
      else
        {FUNC1("Node is nonterminal.  ",stderr);
         if (!(np->parentIsStack))
           {FUNC0(stderr,
                    "Node is %dth child in its parent production:\n  ",
                   np->whichSym
                  );
            FUNC4(np->parent.noderef->prodNum);
           }
         FUNC1("Node is on left hand side of this production:\n  ",stderr);
         FUNC4(np->prodNum);
        }
      FUNC1("The following instances are unsolved:\n",stderr);
      for (i=0; i<sortSize; i++)
        if ((np->refCountList)[i] != 0)
          FUNC0(stderr,"     %-16s still has %1ld dependencies.\n",
                  FUNC2(prodNum,symPos,i),(np->refCountList)[i]);
     }
  }