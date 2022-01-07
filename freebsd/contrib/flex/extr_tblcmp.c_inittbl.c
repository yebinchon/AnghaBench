
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* NIL ;
 scalar_t__ chk ;
 int current_max_xpairs ;
 scalar_t__ firstfree ;
 int numecs ;
 scalar_t__ numtemps ;
 scalar_t__ tblend ;
 int* tecbck ;
 int* tecfwd ;
 scalar_t__ usemecs ;
 int zero_out (char*,size_t) ;

void inittbl ()
{
 int i;

 zero_out ((char *) chk,

    (size_t) (current_max_xpairs * sizeof (int)));

 tblend = 0;
 firstfree = tblend + 1;
 numtemps = 0;

 if (usemecs) {





  tecbck[1] = NIL;

  for (i = 2; i <= numecs; ++i) {
   tecbck[i] = i - 1;
   tecfwd[i - 1] = i;
  }

  tecfwd[numecs] = NIL;
 }
}
