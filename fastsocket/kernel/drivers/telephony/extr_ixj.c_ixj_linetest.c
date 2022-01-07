
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_28__ {scalar_t__ VDD_OK; } ;
struct TYPE_29__ {TYPE_7__ bitreg; } ;
struct TYPE_30__ {TYPE_8__ xr0; } ;
struct TYPE_26__ {int rly1; int rly3; scalar_t__ rly2; } ;
struct TYPE_27__ {int byte; TYPE_5__ bits; } ;
struct TYPE_24__ {scalar_t__ daafsyncen; } ;
struct TYPE_25__ {int byte; TYPE_3__ bits; } ;
struct TYPE_22__ {scalar_t__ potspstn; } ;
struct TYPE_23__ {TYPE_1__ bits; int byte; } ;
struct TYPE_20__ {int pstncheck; int pstn_present; int pots_pstn; int pots_correct; } ;
struct TYPE_18__ {TYPE_9__ XOP; } ;
struct TYPE_19__ {TYPE_10__ XOP_REGS; } ;
struct TYPE_21__ {TYPE_12__ flags; scalar_t__ pstn_sleeptil; TYPE_11__ m_DAAShadowRegs; scalar_t__ XILINXbase; TYPE_6__ pld_slicw; TYPE_4__ pld_scrw; TYPE_2__ pld_slicr; } ;
typedef TYPE_13__ IXJ ;


 int LED_SetState (int,TYPE_13__*) ;
 int SOP_PU_CONVERSATION ;
 int SOP_PU_RESET ;
 int daa_int_read (TYPE_13__*) ;
 int daa_set_mode (TYPE_13__*,int ) ;
 int hertz ;
 int inb_p (scalar_t__) ;
 scalar_t__ jiffies ;
 int msleep (int) ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static int ixj_linetest(IXJ *j)
{
 j->flags.pstncheck = 1;
 j->flags.pstn_present = 0;

 daa_int_read(j);




 j->pld_slicw.bits.rly1 = 0;
 j->pld_slicw.bits.rly2 = 0;
 j->pld_slicw.bits.rly3 = 0;
 outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
 j->pld_scrw.bits.daafsyncen = 0;

 outb_p(j->pld_scrw.byte, j->XILINXbase);
 j->pld_slicr.byte = inb_p(j->XILINXbase + 0x01);
 if (j->pld_slicr.bits.potspstn) {
  j->flags.pots_pstn = 1;
  j->flags.pots_correct = 0;
  LED_SetState(0x4, j);
 } else {
  j->flags.pots_pstn = 0;
  j->pld_slicw.bits.rly1 = 0;
  j->pld_slicw.bits.rly2 = 0;
  j->pld_slicw.bits.rly3 = 1;
  outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
  j->pld_scrw.bits.daafsyncen = 0;

  outb_p(j->pld_scrw.byte, j->XILINXbase);
  daa_set_mode(j, SOP_PU_CONVERSATION);
  msleep(1000);
  daa_int_read(j);
  daa_set_mode(j, SOP_PU_RESET);
  if (j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.bitreg.VDD_OK) {
   j->flags.pots_correct = 0;
   LED_SetState(0x4, j);
   j->pld_slicw.bits.rly3 = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
  } else {
   j->flags.pots_correct = 1;
   LED_SetState(0x8, j);
   j->pld_slicw.bits.rly1 = 1;
   j->pld_slicw.bits.rly2 = 0;
   j->pld_slicw.bits.rly3 = 0;
   outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
  }
 }
 j->pld_slicw.bits.rly3 = 0;
 outb_p(j->pld_slicw.byte, j->XILINXbase + 0x01);
 daa_set_mode(j, SOP_PU_CONVERSATION);
 msleep(1000);
 daa_int_read(j);
 daa_set_mode(j, SOP_PU_RESET);
 if (j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.bitreg.VDD_OK) {
  j->pstn_sleeptil = jiffies + (hertz / 4);
  j->flags.pstn_present = 1;
 } else {
  j->flags.pstn_present = 0;
 }
 if (j->flags.pstn_present) {
  if (j->flags.pots_correct) {
   LED_SetState(0xA, j);
  } else {
   LED_SetState(0x6, j);
  }
 } else {
  if (j->flags.pots_correct) {
   LED_SetState(0x9, j);
  } else {
   LED_SetState(0x5, j);
  }
 }
 j->flags.pstncheck = 0;
 return j->flags.pstn_present;
}
