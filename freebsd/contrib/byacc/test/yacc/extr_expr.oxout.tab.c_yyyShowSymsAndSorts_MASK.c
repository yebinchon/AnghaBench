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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int,int,int) ; 
 char* FUNC4 (int,int) ; 
 int yyyLastProdNum ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

void FUNC8()
  {int i; 

   for (i=1; i<=yyyLastProdNum; i++) 
     {int j, nSyms;

      FUNC0(stderr,
              "\n\n\n---------------------------------- %3.1d\n",i);
      /* yyyShowProd(i); */ 
      nSyms = FUNC5(i); 
      for (j=0; j<nSyms; j++) 
        {int k, sortSize;

         FUNC0(stderr,"%s\n",FUNC4(i,j));
         sortSize = FUNC6(FUNC7(i,j));
         for (k=0; k<sortSize; k++) 
            FUNC0(stderr,"  %s\n",FUNC3(i,j,k));
         if (j == 0) FUNC1("->\n",stderr); 
              else 
              FUNC2('\n',stderr); 
        }
     }
  }