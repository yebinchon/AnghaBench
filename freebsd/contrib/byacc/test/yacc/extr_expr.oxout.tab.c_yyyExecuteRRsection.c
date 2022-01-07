
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yyyGNT ;


 int fprintf (int ,char*,long) ;
 int fputs (char*,int ) ;
 int stderr ;
 int yyyCheckUnsolvedInstTrav (int *,long*,long*) ;
 int yyyDoTraversals (int *) ;
 int yyyUnsolvedInstSearchTravAux (int *) ;
 int yyyYok ;

void yyyExecuteRRsection(yyyGNT *rootNode) {
   int yyyi;
   long cycleSum = 0;
   long nNZrc = 0;

   if (!yyyYok) return;
   yyyCheckUnsolvedInstTrav(rootNode,&nNZrc,&cycleSum);
   if (nNZrc)
      {
       fputs("\n\n\n**********\n",stderr);
       fputs("cycle detected in completed parse tree",stderr);
       fputs(" after decoration.\n",stderr);
       fprintf(stderr,
         "searching parse tree for %ld unsolved instances:\n",
               nNZrc
              );
       yyyUnsolvedInstSearchTravAux(rootNode);
      }
   yyyDoTraversals(rootNode);
}
