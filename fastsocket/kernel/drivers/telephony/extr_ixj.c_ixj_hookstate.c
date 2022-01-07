
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_26__ {int pots_pstn; scalar_t__ pcmciasct; scalar_t__ pcmciascp; int cringing; int ringing; } ;
struct TYPE_24__ {int hookstate; int flash; } ;
struct TYPE_25__ {TYPE_7__ bits; } ;
struct TYPE_22__ {int det; int state; int potspstn; } ;
struct TYPE_23__ {TYPE_5__ bits; } ;
struct TYPE_20__ {int det; } ;
struct TYPE_21__ {TYPE_3__ pcib; int byte; } ;
struct TYPE_18__ {int gpio3read; } ;
struct TYPE_19__ {TYPE_1__ bits; } ;
struct TYPE_17__ {int cardtype; int p_hook; int r_hook; scalar_t__ port; scalar_t__ daa_mode; TYPE_9__ flags; void* flash_end; TYPE_8__ ex; TYPE_6__ pld_slicr; TYPE_4__ pld_scrr; int XILINXbase; int board; void* checkwait; int writers; int readers; TYPE_2__ gpio; } ;
typedef TYPE_10__ IXJ ;


 int PLD_SLIC_STATE_ACTIVE ;
 int PLD_SLIC_STATE_RINGING ;
 int PLD_SLIC_STATE_STANDBY ;
 int POLL_IN ;
 scalar_t__ PORT_HANDSET ;
 scalar_t__ PORT_PSTN ;
 scalar_t__ PORT_SPEAKER ;





 int SIG_FLASH ;
 int SIG_HOOKSTATE ;
 int SLIC_GetState (TYPE_10__*) ;
 scalar_t__ SOP_PU_CONVERSATION ;
 int hertz ;
 int in_interrupt () ;
 int inb_p (int ) ;
 int ixj_gpio_read (TYPE_10__*) ;
 int ixj_kill_fasync (TYPE_10__*,int ,int ) ;
 int ixj_pcmcia_cable_check (TYPE_10__*) ;
 int ixj_ring_on (TYPE_10__*) ;
 void* jiffies ;
 int msleep (int) ;
 int printk (char*,int ,int,void*) ;
 scalar_t__ time_before (void*,void*) ;

__attribute__((used)) static int ixj_hookstate(IXJ *j)
{
 int fOffHook = 0;

 switch (j->cardtype) {
 case 130:
  ixj_gpio_read(j);
  fOffHook = j->gpio.bits.gpio3read ? 1 : 0;
  break;
 case 132:
 case 129:
 case 128:
  SLIC_GetState(j);
  if(j->cardtype == 132 && j->flags.pots_pstn == 1 && (j->readers || j->writers)) {
   fOffHook = j->pld_slicr.bits.potspstn ? 1 : 0;
   if(fOffHook != j->p_hook) {
    if(!j->checkwait) {
     j->checkwait = jiffies;
    }
    if(time_before(jiffies, j->checkwait + 2)) {
     fOffHook ^= 1;
    } else {
     j->checkwait = 0;
    }
    j->p_hook = fOffHook;
     printk("IXJ : /dev/phone%d pots-pstn hookstate check %d at %ld\n", j->board, fOffHook, jiffies);
   }
  } else {
   if (j->pld_slicr.bits.state == PLD_SLIC_STATE_ACTIVE ||
       j->pld_slicr.bits.state == PLD_SLIC_STATE_STANDBY) {
    if (j->flags.ringing || j->flags.cringing) {
     if (!in_interrupt()) {
      msleep(20);
     }
     SLIC_GetState(j);
     if (j->pld_slicr.bits.state == PLD_SLIC_STATE_RINGING) {
      ixj_ring_on(j);
     }
    }
    if (j->cardtype == 128) {
     j->pld_scrr.byte = inb_p(j->XILINXbase);
     fOffHook = j->pld_scrr.pcib.det ? 1 : 0;
    } else
     fOffHook = j->pld_slicr.bits.det ? 1 : 0;
   }
  }
  break;
 case 131:
  fOffHook = ixj_pcmcia_cable_check(j);
  break;
 }
 if (j->r_hook != fOffHook) {
  j->r_hook = fOffHook;
  if (j->port == PORT_SPEAKER || j->port == PORT_HANDSET) {
   j->ex.bits.hookstate = 1;
   ixj_kill_fasync(j, SIG_HOOKSTATE, POLL_IN);
  } else if (!fOffHook) {
   j->flash_end = jiffies + ((60 * hertz) / 100);
  }
 }
 if (fOffHook) {
  if(time_before(jiffies, j->flash_end)) {
   j->ex.bits.flash = 1;
   j->flash_end = 0;
   ixj_kill_fasync(j, SIG_FLASH, POLL_IN);
  }
 } else {
  if(time_before(jiffies, j->flash_end)) {
   fOffHook = 1;
  }
 }

 if (j->port == PORT_PSTN && j->daa_mode == SOP_PU_CONVERSATION)
  fOffHook |= 2;

 if (j->port == PORT_SPEAKER) {
  if(j->cardtype == 131) {
   if(j->flags.pcmciascp && j->flags.pcmciasct) {
    fOffHook |= 2;
   }
  } else {
   fOffHook |= 2;
  }
 }

 if (j->port == PORT_HANDSET)
  fOffHook |= 2;

 return fOffHook;
}
