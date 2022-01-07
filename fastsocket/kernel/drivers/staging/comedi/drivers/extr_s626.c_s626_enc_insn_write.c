
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc_private {int (* SetLoadTrig ) (struct comedi_device*,struct enc_private*,int) ;int (* PulseIndex ) (struct comedi_device*,struct enc_private*) ;} ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 size_t CR_CHAN (int ) ;
 int DEBUG (char*,...) ;
 int Preload (struct comedi_device*,struct enc_private*,unsigned int) ;
 struct enc_private* encpriv ;
 int stub1 (struct comedi_device*,struct enc_private*,int) ;
 int stub2 (struct comedi_device*,struct enc_private*) ;
 int stub3 (struct comedi_device*,struct enc_private*,int) ;

__attribute__((used)) static int s626_enc_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{

 struct enc_private *k = &encpriv[CR_CHAN(insn->chanspec)];

 DEBUG("s626_enc_insn_write: encoder write channel %d \n",
       CR_CHAN(insn->chanspec));


 Preload(dev, k, data[0]);



 k->SetLoadTrig(dev, k, 0);
 k->PulseIndex(dev, k);
 k->SetLoadTrig(dev, k, 2);

 DEBUG("s626_enc_insn_write: End encoder write\n");

 return 1;
}
