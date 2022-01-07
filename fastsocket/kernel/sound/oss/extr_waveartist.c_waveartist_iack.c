
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int io_base; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef TYPE_2__ wavnc_info ;


 unsigned int CTLR ;
 int IRQ_ACK ;
 int inb (unsigned int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static inline void
waveartist_iack(wavnc_info *devc)
{
 unsigned int ctlr_port = devc->hw.io_base + CTLR;
 int old_ctlr;

 old_ctlr = inb(ctlr_port) & ~IRQ_ACK;

 outb(old_ctlr | IRQ_ACK, ctlr_port);
 outb(old_ctlr, ctlr_port);
}
