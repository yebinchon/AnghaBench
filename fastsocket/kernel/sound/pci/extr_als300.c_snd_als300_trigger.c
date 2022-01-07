
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {unsigned short control_register; int period_flipflop; } ;
struct snd_als300 {int reg_lock; int port; } ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;


 int EINVAL ;
 int FIFO_PAUSE ;






 int TRANSFER_START ;
 int snd_als300_dbgcallenter () ;
 int snd_als300_dbgcallleave () ;
 int snd_als300_dbgplay (char*) ;
 int snd_als300_gcr_read (int ,unsigned short) ;
 int snd_als300_gcr_write (int ,unsigned short,int) ;
 struct snd_als300* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_als300_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_als300 *chip = snd_pcm_substream_chip(substream);
 u32 tmp;
 struct snd_als300_substream_data *data;
 unsigned short reg;
 int ret = 0;

 data = substream->runtime->private_data;
 reg = data->control_register;

 snd_als300_dbgcallenter();
 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  tmp = snd_als300_gcr_read(chip->port, reg);
  data->period_flipflop = 1;
  snd_als300_gcr_write(chip->port, reg, tmp | TRANSFER_START);
  snd_als300_dbgplay("TRIGGER START\n");
  break;
 case 129:
 case 128:
  tmp = snd_als300_gcr_read(chip->port, reg);
  snd_als300_gcr_write(chip->port, reg, tmp & ~TRANSFER_START);
  snd_als300_dbgplay("TRIGGER STOP\n");
  break;
 case 133:
  tmp = snd_als300_gcr_read(chip->port, reg);
  snd_als300_gcr_write(chip->port, reg, tmp | FIFO_PAUSE);
  snd_als300_dbgplay("TRIGGER PAUSE\n");
  break;
 case 132:
  tmp = snd_als300_gcr_read(chip->port, reg);
  snd_als300_gcr_write(chip->port, reg, tmp & ~FIFO_PAUSE);
  snd_als300_dbgplay("TRIGGER RELEASE\n");
  break;
 default:
  snd_als300_dbgplay("TRIGGER INVALID\n");
  ret = -EINVAL;
 }
 spin_unlock(&chip->reg_lock);
 snd_als300_dbgcallleave();
 return ret;
}
