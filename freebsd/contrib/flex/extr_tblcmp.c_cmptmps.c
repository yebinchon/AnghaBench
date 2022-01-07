
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIZE ;
 int JAMSTATE ;
 int cre8ecs (int ,size_t*,int) ;
 scalar_t__ current_max_dfas ;
 int increase_max_dfas () ;
 scalar_t__ lastdfa ;
 int mkentry (int*,int,scalar_t__,int ,int) ;
 int numecs ;
 int nummecs ;
 int numtemps ;
 scalar_t__ peakpairs ;
 scalar_t__ tblend ;
 size_t* tecbck ;
 int tecfwd ;
 int* tnxt ;
 scalar_t__ usemecs ;

void cmptmps ()
{
 int tmpstorage[CSIZE + 1];
 int *tmp = tmpstorage, i, j;
 int totaltrans, trans;

 peakpairs = numtemps * numecs + tblend;

 if (usemecs) {



  nummecs = cre8ecs (tecfwd, tecbck, numecs);
 }

 else
  nummecs = numecs;

 while (lastdfa + numtemps + 1 >= current_max_dfas)
  increase_max_dfas ();



 for (i = 1; i <= numtemps; ++i) {

  totaltrans = 0;

  for (j = 1; j <= numecs; ++j) {
   trans = tnxt[numecs * i + j];

   if (usemecs) {




    if (tecbck[j] > 0) {
     tmp[tecbck[j]] = trans;

     if (trans > 0)
      ++totaltrans;
    }
   }

   else {
    tmp[j] = trans;

    if (trans > 0)
     ++totaltrans;
   }
  }
  mkentry (tmp, nummecs, lastdfa + i + 1, JAMSTATE,
    totaltrans);
 }
}
