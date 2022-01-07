
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int (* SetEnable ) (struct comedi_device*,struct enc_private*,int ) ;int (* ResetCapFlags ) (struct comedi_device*,struct enc_private*) ;int (* SetIntSrc ) (struct comedi_device*,struct enc_private*,int ) ;int (* SetMode ) (struct comedi_device*,struct enc_private*,int,int ) ;} ;
struct comedi_device {int dummy; } ;


 int BF_CLKENAB ;
 int BF_CLKMULT ;
 int BF_CLKPOL ;
 int BF_CLKSRC ;
 int BF_INDXSRC ;
 int BF_LOADSRC ;
 int CLKENAB_ALWAYS ;
 int CLKENAB_INDEX ;
 int CLKMULT_1X ;
 int CLKPOL_POS ;
 int CLKSRC_COUNTER ;
 int CNTDIR_UP ;
 int DEBUG (char*) ;
 int INDXSRC_SOFT ;
 int LOADSRC_INDX ;
 int S626_ENCODER_CHANNELS ;
 int TRUE ;
 struct enc_private* encpriv ;
 int stub1 (struct comedi_device*,struct enc_private*,int,int ) ;
 int stub2 (struct comedi_device*,struct enc_private*,int ) ;
 int stub3 (struct comedi_device*,struct enc_private*) ;
 int stub4 (struct comedi_device*,struct enc_private*,int ) ;

__attribute__((used)) static void CountersInit(struct comedi_device *dev)
{
 int chan;
 struct enc_private *k;
 uint16_t Setup = (LOADSRC_INDX << BF_LOADSRC) |

     (INDXSRC_SOFT << BF_INDXSRC) |
     (CLKSRC_COUNTER << BF_CLKSRC) |
     (CLKPOL_POS << BF_CLKPOL) |
     (CNTDIR_UP << BF_CLKPOL) |
     (CLKMULT_1X << BF_CLKMULT) |
     (CLKENAB_INDEX << BF_CLKENAB);


 for (chan = 0; chan < S626_ENCODER_CHANNELS; chan++) {
  k = &encpriv[chan];
  k->SetMode(dev, k, Setup, TRUE);
  k->SetIntSrc(dev, k, 0);
  k->ResetCapFlags(dev, k);
  k->SetEnable(dev, k, CLKENAB_ALWAYS);
 }
 DEBUG("CountersInit: counters initialized \n");

}
