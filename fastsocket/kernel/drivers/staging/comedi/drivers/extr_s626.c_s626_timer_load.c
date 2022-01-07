
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int (* SetIntSrc ) (struct comedi_device*,struct enc_private*,int ) ;int (* SetLoadTrig ) (struct comedi_device*,struct enc_private*,int) ;int (* PulseIndex ) (struct comedi_device*,struct enc_private*) ;int (* SetMode ) (struct comedi_device*,struct enc_private*,int,int ) ;} ;
struct comedi_device {int dummy; } ;


 int BF_CLKENAB ;
 int BF_CLKMULT ;
 int BF_CLKPOL ;
 int BF_CLKSRC ;
 int BF_INDXSRC ;
 int BF_LOADSRC ;
 int CLKENAB_INDEX ;
 int CLKMULT_1X ;
 int CLKPOL_POS ;
 int CLKSRC_TIMER ;
 int CNTDIR_DOWN ;
 int FALSE ;
 int INDXSRC_SOFT ;
 int INTSRC_OVER ;
 int LATCHSRC_A_INDXA ;
 int LOADSRC_INDX ;
 int Preload (struct comedi_device*,struct enc_private*,int) ;
 int SetLatchSource (struct comedi_device*,struct enc_private*,int) ;
 int stub1 (struct comedi_device*,struct enc_private*,int,int ) ;
 int stub2 (struct comedi_device*,struct enc_private*,int) ;
 int stub3 (struct comedi_device*,struct enc_private*) ;
 int stub4 (struct comedi_device*,struct enc_private*,int) ;
 int stub5 (struct comedi_device*,struct enc_private*,int ) ;

__attribute__((used)) static void s626_timer_load(struct comedi_device *dev, struct enc_private *k,
       int tick)
{
 uint16_t Setup = (LOADSRC_INDX << BF_LOADSRC) |

     (INDXSRC_SOFT << BF_INDXSRC) |
     (CLKSRC_TIMER << BF_CLKSRC) |
     (CLKPOL_POS << BF_CLKPOL) |
     (CNTDIR_DOWN << BF_CLKPOL) |
     (CLKMULT_1X << BF_CLKMULT) |
     (CLKENAB_INDEX << BF_CLKENAB);
 uint16_t valueSrclatch = LATCHSRC_A_INDXA;


 k->SetMode(dev, k, Setup, FALSE);


 Preload(dev, k, tick);



 k->SetLoadTrig(dev, k, 0);
 k->PulseIndex(dev, k);


 k->SetLoadTrig(dev, k, 1);


 k->SetIntSrc(dev, k, INTSRC_OVER);

 SetLatchSource(dev, k, valueSrclatch);

}
