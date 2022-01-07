
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int state; } ;
struct TYPE_17__ {TYPE_6__ bits; int byte; } ;
struct TYPE_14__ {int ring1; int ring0; scalar_t__ powerdown; } ;
struct TYPE_15__ {int byte; TYPE_4__ bits; } ;
struct TYPE_12__ {int dev; int rw; } ;
struct TYPE_13__ {int byte; TYPE_2__ bits; } ;
struct TYPE_11__ {scalar_t__ byte; } ;
struct TYPE_18__ {scalar_t__ cardtype; TYPE_7__ pld_slicr; scalar_t__ XILINXbase; TYPE_5__ pslic; TYPE_3__ psccr; TYPE_1__ pccr1; } ;
typedef TYPE_8__ IXJ ;
typedef int BYTE ;


 int PLD_SLIC_STATE_ACTIVE ;
 int PLD_SLIC_STATE_OC ;
 int PLD_SLIC_STATE_RINGING ;
 scalar_t__ QTI_PHONECARD ;
 int inb_p (scalar_t__) ;
 int inw_p (scalar_t__) ;
 int ixj_PCcontrol_wait (TYPE_8__*) ;
 int outw_p (int,scalar_t__) ;

__attribute__((used)) static inline BYTE SLIC_GetState(IXJ *j)
{
 if (j->cardtype == QTI_PHONECARD) {
  j->pccr1.byte = 0;
  j->psccr.bits.dev = 3;
  j->psccr.bits.rw = 1;
  outw_p(j->psccr.byte << 8, j->XILINXbase + 0x00);
  ixj_PCcontrol_wait(j);
  j->pslic.byte = inw_p(j->XILINXbase + 0x00) & 0xFF;
  ixj_PCcontrol_wait(j);
  if (j->pslic.bits.powerdown)
   return PLD_SLIC_STATE_OC;
  else if (!j->pslic.bits.ring0 && !j->pslic.bits.ring1)
   return PLD_SLIC_STATE_ACTIVE;
  else
   return PLD_SLIC_STATE_RINGING;
 } else {
  j->pld_slicr.byte = inb_p(j->XILINXbase + 0x01);
 }
 return j->pld_slicr.bits.state;
}
