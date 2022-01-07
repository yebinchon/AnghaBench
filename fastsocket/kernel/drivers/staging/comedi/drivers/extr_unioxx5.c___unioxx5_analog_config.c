
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unioxx5_subd_priv {int* usp_prev_cn_val; scalar_t__ usp_iobase; } ;


 int __unioxx5_define_chan_offset (int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void __unioxx5_analog_config(struct unioxx5_subd_priv *usp, int channel)
{
 int chan_a, chan_b, conf, channel_offset;

 channel_offset = __unioxx5_define_chan_offset(channel);
 conf = usp->usp_prev_cn_val[channel_offset - 1];
 chan_a = chan_b = 1;


 if (channel % 2 == 0) {
  chan_a <<= channel & 0x07;
  chan_b <<= (channel + 1) & 0x07;
 } else {
  chan_a <<= (channel - 1) & 0x07;
  chan_b <<= channel & 0x07;
 }

 conf |= chan_a;
 conf &= ~chan_b;

 outb(1, usp->usp_iobase + 0);
 outb(conf, usp->usp_iobase + channel_offset);
 outb(0, usp->usp_iobase + 0);

 usp->usp_prev_cn_val[channel_offset - 1] = conf;
}
