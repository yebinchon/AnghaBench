
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct enc_private {int (* SetEnable ) (struct comedi_device*,struct enc_private*,scalar_t__) ;int (* PulseIndex ) (struct comedi_device*,struct enc_private*) ;int (* SetMode ) (struct comedi_device*,struct enc_private*,scalar_t__,int ) ;} ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int * data; int chanspec; } ;
struct comedi_device {int dummy; } ;


 scalar_t__ BF_CLKENAB ;
 scalar_t__ BF_CLKMULT ;
 scalar_t__ BF_CLKPOL ;
 scalar_t__ BF_CLKSRC ;
 scalar_t__ BF_INDXSRC ;
 scalar_t__ BF_LOADSRC ;
 scalar_t__ CLKENAB_ALWAYS ;
 scalar_t__ CLKENAB_INDEX ;
 scalar_t__ CLKMULT_1X ;
 scalar_t__ CLKPOL_POS ;
 scalar_t__ CLKSRC_COUNTER ;
 size_t CR_CHAN (int ) ;
 int DEBUG (char*) ;
 scalar_t__ INDXSRC_SOFT ;
 scalar_t__ LATCHSRC_AB_READ ;
 scalar_t__ LOADSRC_INDX ;
 int Preload (struct comedi_device*,struct enc_private*,int ) ;
 int SetLatchSource (struct comedi_device*,struct enc_private*,scalar_t__) ;
 int TRUE ;
 struct enc_private* encpriv ;
 int stub1 (struct comedi_device*,struct enc_private*,scalar_t__,int ) ;
 int stub2 (struct comedi_device*,struct enc_private*) ;
 int stub3 (struct comedi_device*,struct enc_private*,scalar_t__) ;

__attribute__((used)) static int s626_enc_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 uint16_t Setup = (LOADSRC_INDX << BF_LOADSRC) |

     (INDXSRC_SOFT << BF_INDXSRC) |
     (CLKSRC_COUNTER << BF_CLKSRC) |
     (CLKPOL_POS << BF_CLKPOL) |

     (CLKMULT_1X << BF_CLKMULT) |
     (CLKENAB_INDEX << BF_CLKENAB);


 uint16_t valueSrclatch = LATCHSRC_AB_READ;
 uint16_t enab = CLKENAB_ALWAYS;
 struct enc_private *k = &encpriv[CR_CHAN(insn->chanspec)];

 DEBUG("s626_enc_insn_config: encoder config\n");



 k->SetMode(dev, k, Setup, TRUE);
 Preload(dev, k, *(insn->data));
 k->PulseIndex(dev, k);
 SetLatchSource(dev, k, valueSrclatch);
 k->SetEnable(dev, k, (uint16_t) (enab != 0));

 return insn->n;
}
