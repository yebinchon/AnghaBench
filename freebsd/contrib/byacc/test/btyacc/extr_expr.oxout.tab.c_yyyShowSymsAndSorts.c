
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int putc (char,int ) ;
 int stderr ;
 char* yyyAttrbStr (int,int,int) ;
 char* yyyGSoccurStr (int,int) ;
 int yyyLastProdNum ;
 int yyySizeofProd (int) ;
 int yyySizeofSort (int ) ;
 int yyySortOf (int,int) ;

void yyyShowSymsAndSorts()
  {int i;

   for (i=1; i<=yyyLastProdNum; i++)
     {int j, nSyms;

      fprintf(stderr,
              "\n\n\n---------------------------------- %3.1d\n",i);

      nSyms = yyySizeofProd(i);
      for (j=0; j<nSyms; j++)
        {int k, sortSize;

         fprintf(stderr,"%s\n",yyyGSoccurStr(i,j));
         sortSize = yyySizeofSort(yyySortOf(i,j));
         for (k=0; k<sortSize; k++)
            fprintf(stderr,"  %s\n",yyyAttrbStr(i,j,k));
         if (j == 0) fputs("->\n",stderr);
              else
              putc('\n',stderr);
        }
     }
  }
