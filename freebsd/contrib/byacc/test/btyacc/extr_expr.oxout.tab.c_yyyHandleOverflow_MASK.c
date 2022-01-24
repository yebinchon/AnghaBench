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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 long yyyRSmaxSize ; 
#define  yyyRSof 130 
#define  yyySSALof 129 
 long yyySSALspaceSize ; 
#define  yyyTSof 128 
 long yyyTravStackMaxSize ; 

void FUNC3(char which) 
  {char *msg1,*msg2; 
   long  oldSize,newSize; 
   switch(which) 
     {
      case yyySSALof : 
           msg1 = "SSAL overflow: ";
           oldSize = yyySSALspaceSize; 
           break; 
      case yyyRSof   : 
           msg1 = "ready set overflow: ";
           oldSize = yyyRSmaxSize; 
           break; 
      case yyyTSof   : 
           msg1 = "traversal stack overflow: ";
           oldSize = yyyTravStackMaxSize; 
           break; 
      default        :;  
     }
   newSize = (3*oldSize)/2; 
   if (newSize < 100) newSize = 100; 
   FUNC2(msg1,stderr); 
   FUNC1(stderr,"size was %hhd.\n",oldSize); 
   msg2 = "     Have to modify evaluator:  -Y%c%ld.\n"; 
   FUNC1(stderr,msg2,which,newSize); 
   FUNC0(-1); 
  }