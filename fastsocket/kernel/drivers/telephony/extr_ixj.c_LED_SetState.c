
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int led1; int led2; int led3; int led4; } ;
struct TYPE_6__ {int byte; TYPE_1__ bits; } ;
struct TYPE_7__ {scalar_t__ cardtype; int XILINXbase; TYPE_2__ pld_scrw; } ;
typedef TYPE_3__ IXJ ;


 scalar_t__ QTI_LINEJACK ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void LED_SetState(int state, IXJ *j)
{
 if (j->cardtype == QTI_LINEJACK) {
  j->pld_scrw.bits.led1 = state & 0x1 ? 1 : 0;
  j->pld_scrw.bits.led2 = state & 0x2 ? 1 : 0;
  j->pld_scrw.bits.led3 = state & 0x4 ? 1 : 0;
  j->pld_scrw.bits.led4 = state & 0x8 ? 1 : 0;

  outb(j->pld_scrw.byte, j->XILINXbase);
 }
}
