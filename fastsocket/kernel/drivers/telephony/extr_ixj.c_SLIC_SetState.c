
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


struct TYPE_17__ {int c1; int c2; int c3; int b2en; } ;
struct TYPE_16__ {int byte; TYPE_7__ bits; } ;
struct TYPE_12__ {int powerdown; int ring0; int ring1; } ;
struct TYPE_15__ {int byte; TYPE_2__ bits; } ;
struct TYPE_13__ {int dev; scalar_t__ rw; } ;
struct TYPE_14__ {int byte; TYPE_3__ bits; } ;
struct TYPE_11__ {scalar_t__ pcmciasct; } ;
struct TYPE_18__ {scalar_t__ cardtype; scalar_t__ XILINXbase; TYPE_6__ pld_slicw; TYPE_5__ pslic; TYPE_4__ psccr; int writers; int readers; TYPE_1__ flags; } ;
typedef TYPE_8__ IXJ ;
typedef int BYTE ;
 scalar_t__ QTI_PHONECARD ;
 int ixj_PCcontrol_wait (TYPE_8__*) ;
 int outb_p (int ,int ) ;
 int outw_p (int,scalar_t__) ;

__attribute__((used)) static bool SLIC_SetState(BYTE byState, IXJ *j)
{
 bool fRetVal = 0;

 if (j->cardtype == QTI_PHONECARD) {
  if (j->flags.pcmciasct) {
   switch (byState) {
   case 128:
   case 133:
    j->pslic.bits.powerdown = 1;
    j->pslic.bits.ring0 = j->pslic.bits.ring1 = 0;
    fRetVal = 1;
    break;
   case 130:
    if (j->readers || j->writers) {
     j->pslic.bits.powerdown = 0;
     j->pslic.bits.ring0 = 1;
     j->pslic.bits.ring1 = 0;
     fRetVal = 1;
    }
    break;
   case 132:

   case 129:
   case 135:
    if (j->readers || j->writers) {
     j->pslic.bits.powerdown = 0;
    } else {
     j->pslic.bits.powerdown = 1;
    }
    j->pslic.bits.ring0 = j->pslic.bits.ring1 = 0;
    fRetVal = 1;
    break;
   case 134:

   case 131:

   default:
    fRetVal = 0;
    break;
   }
   j->psccr.bits.dev = 3;
   j->psccr.bits.rw = 0;
   outw_p(j->psccr.byte << 8 | j->pslic.byte, j->XILINXbase + 0x00);
   ixj_PCcontrol_wait(j);
  }
 } else {

  switch (byState) {
  case 133:
   j->pld_slicw.bits.c1 = 0;
   j->pld_slicw.bits.c2 = 0;
   j->pld_slicw.bits.c3 = 0;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 130:
   j->pld_slicw.bits.c1 = 1;
   j->pld_slicw.bits.c2 = 0;
   j->pld_slicw.bits.c3 = 0;
   j->pld_slicw.bits.b2en = 1;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 135:
   j->pld_slicw.bits.c1 = 0;
   j->pld_slicw.bits.c2 = 1;
   j->pld_slicw.bits.c3 = 0;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 132:

   j->pld_slicw.bits.c1 = 1;
   j->pld_slicw.bits.c2 = 1;
   j->pld_slicw.bits.c3 = 0;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 128:
   j->pld_slicw.bits.c1 = 0;
   j->pld_slicw.bits.c2 = 0;
   j->pld_slicw.bits.c3 = 1;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 129:
   j->pld_slicw.bits.c1 = 1;
   j->pld_slicw.bits.c2 = 0;
   j->pld_slicw.bits.c3 = 1;
   j->pld_slicw.bits.b2en = 1;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 134:

   j->pld_slicw.bits.c1 = 0;
   j->pld_slicw.bits.c2 = 1;
   j->pld_slicw.bits.c3 = 1;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  case 131:

   j->pld_slicw.bits.c1 = 1;
   j->pld_slicw.bits.c2 = 1;
   j->pld_slicw.bits.c3 = 1;
   j->pld_slicw.bits.b2en = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
   fRetVal = 1;
   break;
  default:
   fRetVal = 0;
   break;
  }
 }

 return fRetVal;
}
