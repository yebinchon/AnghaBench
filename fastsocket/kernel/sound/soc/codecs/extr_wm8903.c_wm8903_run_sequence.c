
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {struct i2c_client* control_data; } ;
struct i2c_client {int dev; } ;


 int BUG_ON (int) ;
 int WM8903_WRITE_SEQUENCER_0 ;
 int WM8903_WRITE_SEQUENCER_3 ;
 int WM8903_WRITE_SEQUENCER_4 ;
 int WM8903_WSEQ_BUSY ;
 int WM8903_WSEQ_ENA ;
 unsigned int WM8903_WSEQ_START ;
 int dev_dbg (int *,char*,...) ;
 int msleep (int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8903_run_sequence(struct snd_soc_codec *codec, unsigned int start)
{
 u16 reg[5];
 struct i2c_client *i2c = codec->control_data;

 BUG_ON(start > 48);


 reg[0] = snd_soc_read(codec, WM8903_WRITE_SEQUENCER_0);
 reg[0] |= WM8903_WSEQ_ENA;
 snd_soc_write(codec, WM8903_WRITE_SEQUENCER_0, reg[0]);

 dev_dbg(&i2c->dev, "Starting sequence at %d\n", start);

 snd_soc_write(codec, WM8903_WRITE_SEQUENCER_3,
       start | WM8903_WSEQ_START);





 do {
  msleep(10);

  reg[4] = snd_soc_read(codec, WM8903_WRITE_SEQUENCER_4);
 } while (reg[4] & WM8903_WSEQ_BUSY);

 dev_dbg(&i2c->dev, "Sequence complete\n");


 snd_soc_write(codec, WM8903_WRITE_SEQUENCER_0,
       reg[0] & ~WM8903_WSEQ_ENA);

 return 0;
}
