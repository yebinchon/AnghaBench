
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_data {int index; unsigned int value; int kind; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* analog_out_mapping; unsigned int* ao_readback; int tty; } ;


 size_t CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int is_channel ;
 int serial_write (int ,struct serial_data) ;

__attribute__((used)) static int serial2002_ao_winsn(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int chan;

 chan = devpriv->analog_out_mapping[CR_CHAN(insn->chanspec)];
 for (n = 0; n < insn->n; n++) {
  struct serial_data write;

  write.kind = is_channel;
  write.index = chan;
  write.value = data[n];
  serial_write(devpriv->tty, write);
  devpriv->ao_readback[chan] = data[n];
 }
 return n;
}
