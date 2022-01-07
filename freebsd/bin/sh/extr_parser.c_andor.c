
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;


 int NAND ;
 int NOR ;
 int TAND ;
 int TOR ;
 union node* makebinary (int,union node*,union node*) ;
 union node* pipeline () ;
 int readtoken () ;
 int tokpushback ;

__attribute__((used)) static union node *
andor(void)
{
 union node *n;
 int t;

 n = pipeline();
 for (;;) {
  if ((t = readtoken()) == TAND) {
   t = NAND;
  } else if (t == TOR) {
   t = NOR;
  } else {
   tokpushback++;
   return n;
  }
  n = makebinary(t, n, pipeline());
 }
}
