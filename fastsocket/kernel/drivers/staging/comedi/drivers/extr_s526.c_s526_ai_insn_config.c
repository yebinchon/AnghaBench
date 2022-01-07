
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int s526_ai_config; } ;


 int ADDR_REG (int ) ;
 int EINVAL ;
 int ISR_ADC_DONE ;
 int REG_IER ;
 TYPE_1__* devpriv ;
 int outw (int ,int ) ;

__attribute__((used)) static int s526_ai_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int result = -EINVAL;

 if (insn->n < 1)
  return result;

 result = insn->n;
 outw(ISR_ADC_DONE, ADDR_REG(REG_IER));

 devpriv->s526_ai_config = (data[0] & 0x3FF) << 5;
 if (data[1] > 0)
  devpriv->s526_ai_config |= 0x8000;

 devpriv->s526_ai_config |= 0x0001;

 return result;
}
