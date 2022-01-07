
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long DSPbase; unsigned long XILINXbase; int cardtype; scalar_t__ board; } ;
typedef TYPE_1__ IXJ ;


 int QTI_PHONECARD ;
 TYPE_1__* ixj_alloc () ;
 int ixj_selfprobe (TYPE_1__*) ;

IXJ *ixj_pcmcia_probe(unsigned long dsp, unsigned long xilinx)
{
 IXJ *j = ixj_alloc();

 j->board = 0;

 j->DSPbase = dsp;
 j->XILINXbase = xilinx;
 j->cardtype = QTI_PHONECARD;
 ixj_selfprobe(j);
 return j;
}
