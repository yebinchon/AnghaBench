
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basepf ;
 int * parsefile ;
 int popfile () ;

void
popallfiles(void)
{
 while (parsefile != &basepf)
  popfile();
}
