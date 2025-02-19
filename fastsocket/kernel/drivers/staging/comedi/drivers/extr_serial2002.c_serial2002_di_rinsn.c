
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_data {scalar_t__ kind; int index; unsigned int value; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* digital_in_mapping; int tty; } ;


 size_t CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 scalar_t__ is_digital ;
 int poll_digital (int ,int) ;
 struct serial_data serial_read (int ,int) ;

__attribute__((used)) static int serial2002_di_rinsn(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int chan;

 chan = devpriv->digital_in_mapping[CR_CHAN(insn->chanspec)];
 for (n = 0; n < insn->n; n++) {
  struct serial_data read;

  poll_digital(devpriv->tty, chan);
  while (1) {
   read = serial_read(devpriv->tty, 1000);
   if (read.kind != is_digital || read.index == chan) {
    break;
   }
  }
  data[n] = read.value;
 }
 return n;
}
