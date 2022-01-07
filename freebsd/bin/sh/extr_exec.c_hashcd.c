
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearcmdentry () ;
 scalar_t__ cmdtable_cd ;

void
hashcd(void)
{
 if (cmdtable_cd)
  clearcmdentry();
}
