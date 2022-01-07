
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ yyyRS ;
 scalar_t__ yyyRSTop ;
 int yyySolveAndSignal () ;

void yyyDecorate(void)
  {
   while (yyyRSTop >= yyyRS)
      yyySolveAndSignal();
  }
