
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yyySolvedSAlistCell {int dummy; } ;
struct yyyRSitem {int dummy; } ;


 scalar_t__ calloc (size_t,size_t) ;
 struct yyyRSitem* yyyAfterRS ;
 struct yyyRSitem* yyyRS ;
 struct yyyRSitem* yyyRSTop ;
 int yyyRSmaxSize ;
 struct yyySolvedSAlistCell* yyySSALspace ;
 scalar_t__ yyySSALspaceSize ;
 int yyyfatal (char*) ;

void yyyYoxInit(void)
  {
   static int yyyInitDone = 0;
   if (yyyInitDone) return;

   if ((yyyRS = (struct yyyRSitem *)
         calloc((size_t)(yyyRSmaxSize+1), (size_t)sizeof(struct yyyRSitem))
       )
       ==
       ((struct yyyRSitem *) ((void*)0))
      )
      yyyfatal("malloc error in ox ready set space allocation\n");
   yyyRS++;
   yyyAfterRS = yyyRS + yyyRSmaxSize;


   if ((yyySSALspace = (struct yyySolvedSAlistCell *)
          calloc((size_t)(yyySSALspaceSize+1), (size_t)sizeof(struct yyySolvedSAlistCell))
       )
       ==
       ((struct yyySolvedSAlistCell *) ((void*)0))
      )
      yyyfatal("malloc error in stack solved list space allocation\n");
   yyyInitDone = 1;

   yyyRSTop = yyyRS - 1;
  }
