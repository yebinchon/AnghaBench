
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int s526_ai_config; } ;


 int ADDR_REG (int ) ;
 int CR_CHAN (int ) ;
 int ETIMEDOUT ;
 unsigned int ISR_ADC_DONE ;
 int REG_ADC ;
 int REG_ADD ;
 int REG_ISR ;
 int TIMEOUT ;
 TYPE_1__* devpriv ;
 unsigned int inw (int ) ;
 int outw (unsigned int,int ) ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static int s526_ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int n, i;
 int chan = CR_CHAN(insn->chanspec);
 unsigned short value;
 unsigned int d;
 unsigned int status;



 value = (devpriv->s526_ai_config & 0x8000) |
     ((1 << 5) << chan) | (chan << 1) | 0x0001;


 for (n = 0; n < insn->n; n++) {

  outw(value, ADDR_REG(REG_ADC));





  for (i = 0; i < 100; i++) {
   status = inw(ADDR_REG(REG_ISR));
   if (status & ISR_ADC_DONE) {
    outw(ISR_ADC_DONE, ADDR_REG(REG_ISR));
    break;
   }
  }
  if (i == 100) {


   printk("s526: ADC(0x%04x) timeout\n",
          inw(ADDR_REG(REG_ISR)));
   return -ETIMEDOUT;
  }


  d = inw(ADDR_REG(REG_ADD));



  data[n] = d ^ 0x8000;
 }


 return n;
}
