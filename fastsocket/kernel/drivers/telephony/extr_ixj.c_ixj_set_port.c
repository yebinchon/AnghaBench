
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_27__ {int gpio6; int gpio7; } ;
struct TYPE_26__ {int high; } ;
struct TYPE_24__ {int rly1; int spken; int rly3; } ;
struct TYPE_20__ {int mic; int spk; } ;
struct TYPE_25__ {int byte; TYPE_6__ bits; TYPE_2__ pcib; } ;
struct TYPE_23__ {int byte; } ;
struct TYPE_21__ {int daafsyncen; } ;
struct TYPE_22__ {int byte; TYPE_3__ bits; } ;
struct TYPE_19__ {int pcmciasct; } ;
struct TYPE_17__ {int word; TYPE_9__ bits; TYPE_8__ bytes; } ;
struct TYPE_18__ {scalar_t__ cardtype; int port; TYPE_10__ gpio; int XILINXbase; TYPE_7__ pld_slicw; TYPE_5__ pld_clock; TYPE_4__ pld_scrw; TYPE_1__ flags; } ;
typedef TYPE_11__ IXJ ;


 int PLD_SLIC_STATE_ACTIVE ;
 int PLD_SLIC_STATE_OC ;
 int PLD_SLIC_STATE_STANDBY ;







 scalar_t__ QTI_PHONEJACK_LITE ;

 int SLIC_SetState (int ,TYPE_11__*) ;
 int ixj_WriteDSPCommand (int,TYPE_11__*) ;
 int ixj_mixer (int,TYPE_11__*) ;
 int ixj_set_pots (TYPE_11__*,int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static int ixj_set_port(IXJ *j, int arg)
{
 if (j->cardtype == QTI_PHONEJACK_LITE) {
  if (arg != 134)
   return 10;
  else
   return 0;
 }
 switch (arg) {
 case 134:
  j->port = 134;
  switch (j->cardtype) {
  case 130:
   if (j->flags.pcmciasct == 1)
    SLIC_SetState(PLD_SLIC_STATE_ACTIVE, j);
   else
    return 11;
   break;
  case 128:
   j->pld_slicw.pcib.mic = 0;
   j->pld_slicw.pcib.spk = 0;
   outb(j->pld_slicw.byte, j->XILINXbase + 0x01);
   break;
  case 131:
   ixj_set_pots(j, 0);
   if (ixj_WriteDSPCommand(0xC528, j))

    return 2;
   j->pld_scrw.bits.daafsyncen = 0;

   outb(j->pld_scrw.byte, j->XILINXbase);
   j->pld_clock.byte = 0;
   outb(j->pld_clock.byte, j->XILINXbase + 0x04);
   j->pld_slicw.bits.rly1 = 1;
   j->pld_slicw.bits.spken = 0;
   outb(j->pld_slicw.byte, j->XILINXbase + 0x01);
   ixj_mixer(0x1200, j);
   ixj_mixer(0x1401, j);
   ixj_mixer(0x1300, j);
   ixj_mixer(0x1501, j);
   ixj_mixer(0x0E80, j);
   ixj_mixer(0x0F00, j);
   ixj_mixer(0x0080, j);
   ixj_mixer(0x0180, j);
   SLIC_SetState(PLD_SLIC_STATE_STANDBY, j);

   break;
  case 129:
   j->gpio.bytes.high = 0x0B;
   j->gpio.bits.gpio6 = 0;
   j->gpio.bits.gpio7 = 0;
   ixj_WriteDSPCommand(j->gpio.word, j);
   break;
  }
  break;
 case 133:
  if (j->cardtype == 131) {
   ixj_WriteDSPCommand(0xC534, j);

   j->pld_slicw.bits.rly3 = 0;
   j->pld_slicw.bits.rly1 = 1;
   j->pld_slicw.bits.spken = 0;
   outb(j->pld_slicw.byte, j->XILINXbase + 0x01);
   j->port = 133;
  } else {
   return 4;
  }
  break;
 case 132:
  j->port = 132;
  switch (j->cardtype) {
  case 130:
   if (j->flags.pcmciasct) {
    SLIC_SetState(PLD_SLIC_STATE_OC, j);
   }
   break;
  case 128:
   j->pld_slicw.pcib.mic = 1;
   j->pld_slicw.pcib.spk = 1;
   outb(j->pld_slicw.byte, j->XILINXbase + 0x01);
   break;
  case 131:
   ixj_set_pots(j, 0);
   if (ixj_WriteDSPCommand(0xC528, j))

    return 2;
   j->pld_scrw.bits.daafsyncen = 0;

   outb(j->pld_scrw.byte, j->XILINXbase);
   j->pld_clock.byte = 0;
   outb(j->pld_clock.byte, j->XILINXbase + 0x04);
   j->pld_slicw.bits.rly1 = 1;
   j->pld_slicw.bits.spken = 1;
   outb(j->pld_slicw.byte, j->XILINXbase + 0x01);
   ixj_mixer(0x1201, j);
   ixj_mixer(0x1400, j);
   ixj_mixer(0x1301, j);
   ixj_mixer(0x1500, j);
   ixj_mixer(0x0E06, j);
   ixj_mixer(0x0F80, j);
   ixj_mixer(0x0000, j);
   ixj_mixer(0x0100, j);
   break;
  case 129:
   j->gpio.bytes.high = 0x0B;
   j->gpio.bits.gpio6 = 0;
   j->gpio.bits.gpio7 = 1;
   ixj_WriteDSPCommand(j->gpio.word, j);
   break;
  }
  break;
 case 135:
  if (j->cardtype != 129) {
   return 5;
  } else {
   j->gpio.bytes.high = 0x0B;
   j->gpio.bits.gpio6 = 1;
   j->gpio.bits.gpio7 = 0;
   ixj_WriteDSPCommand(j->gpio.word, j);
   j->port = 135;
  }
  break;
 default:
  return 6;
  break;
 }
 return 0;
}
