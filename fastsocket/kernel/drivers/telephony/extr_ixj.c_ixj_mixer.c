
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {long high; long low; } ;
struct TYPE_6__ {long* vol; } ;
struct TYPE_7__ {scalar_t__ XILINXbase; TYPE_1__ mix; } ;
typedef TYPE_2__ IXJ ;
typedef TYPE_3__ BYTES ;


 int SCI_Control (TYPE_2__*,int ) ;
 int SCI_Enable_Mixer ;
 int SCI_End ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static int ixj_mixer(long val, IXJ *j)
{
 BYTES bytes;

 bytes.high = (val & 0x1F00) >> 8;
 bytes.low = val & 0x00FF;


        j->mix.vol[bytes.high] = bytes.low;

 outb_p(bytes.high & 0x1F, j->XILINXbase + 0x03);

 outb_p(bytes.low, j->XILINXbase + 0x02);

 SCI_Control(j, SCI_Enable_Mixer);

 SCI_Control(j, SCI_End);

 return 0;
}
