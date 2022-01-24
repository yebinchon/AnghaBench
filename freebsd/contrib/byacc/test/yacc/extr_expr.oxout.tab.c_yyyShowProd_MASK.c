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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int,int) ; 
 int FUNC4 (int) ; 

void FUNC5(int i)
  {int j,nSyms;

   nSyms = FUNC4(i);
   for (j=0; j<nSyms; j++)
     {
      FUNC0(stderr,"%s",FUNC3(i,j));
      if (j == 0) FUNC1(" : ",stderr); else FUNC2(' ',stderr);
     }
   FUNC1(";\n",stderr);
  }