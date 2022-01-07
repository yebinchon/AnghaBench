
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DSPbase; } ;
typedef TYPE_1__ IXJ ;


 int IXJMAX ;
 TYPE_1__* ixj ;

__attribute__((used)) static IXJ *ixj_alloc(void)
{
 int cnt;
 for(cnt=0; cnt<IXJMAX; cnt++) {
  if(!ixj[cnt].DSPbase)
   return &ixj[cnt];
 }
 return ((void*)0);
}
