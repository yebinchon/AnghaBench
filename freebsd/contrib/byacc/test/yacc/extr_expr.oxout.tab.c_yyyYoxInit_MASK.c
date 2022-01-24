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
struct yyySolvedSAlistCell {int dummy; } ;
struct yyyRSitem {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,size_t) ; 
 struct yyyRSitem* yyyAfterRS ; 
 struct yyyRSitem* yyyRS ; 
 struct yyyRSitem* yyyRSTop ; 
 int yyyRSmaxSize ; 
 struct yyySolvedSAlistCell* yyySSALspace ; 
 scalar_t__ yyySSALspaceSize ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void) 
  { 
   static int yyyInitDone = 0;
   if (yyyInitDone) return;
 
   if ((yyyRS = (struct yyyRSitem *) 
         FUNC0((size_t)(yyyRSmaxSize+1), (size_t)sizeof(struct yyyRSitem))
       )  
       == 
       ((struct yyyRSitem *) NULL) 
      )   
      FUNC1("malloc error in ox ready set space allocation\n");  
   yyyRS++; 
   yyyAfterRS = yyyRS + yyyRSmaxSize; 

 
   if ((yyySSALspace = (struct yyySolvedSAlistCell *) 
          FUNC0((size_t)(yyySSALspaceSize+1), (size_t)sizeof(struct yyySolvedSAlistCell)) 
       ) 
       == 
       ((struct yyySolvedSAlistCell *) NULL) 
      ) 
      FUNC1("malloc error in stack solved list space allocation\n"); 
   yyyInitDone = 1;
 
   yyyRSTop = yyyRS - 1; 
  }