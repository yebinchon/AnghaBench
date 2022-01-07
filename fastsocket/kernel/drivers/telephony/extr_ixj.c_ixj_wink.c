
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int winktime; int pots_winkstart; } ;
typedef TYPE_1__ IXJ ;
typedef int BYTE ;


 int PLD_SLIC_STATE_OC ;
 int SLIC_GetState (TYPE_1__*) ;
 int SLIC_SetState (int ,TYPE_1__*) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int msleep (int ) ;

__attribute__((used)) static int ixj_wink(IXJ *j)
{
 BYTE slicnow;

 slicnow = SLIC_GetState(j);

 j->pots_winkstart = jiffies;
 SLIC_SetState(PLD_SLIC_STATE_OC, j);

 msleep(jiffies_to_msecs(j->winktime));

 SLIC_SetState(slicnow, j);
 return 0;
}
