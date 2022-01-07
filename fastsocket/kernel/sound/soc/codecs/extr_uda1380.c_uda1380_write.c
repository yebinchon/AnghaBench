
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int (* hw_write ) (int ,int*,int) ;int control_data; int active; } ;


 int EIO ;
 unsigned int UDA1380_MVOL ;
 int clear_bit (unsigned int,int *) ;
 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int pr_debug (char*,int,...) ;
 int stub1 (int ,int*,int) ;
 int uda1380_cache_dirty ;
 int uda1380_write_reg_cache (struct snd_soc_codec*,unsigned int,unsigned int) ;

__attribute__((used)) static int uda1380_write(struct snd_soc_codec *codec, unsigned int reg,
 unsigned int value)
{
 u8 data[3];






 data[0] = reg;
 data[1] = (value & 0xff00) >> 8;
 data[2] = value & 0x00ff;

 uda1380_write_reg_cache(codec, reg, value);




 if (!codec->active && (reg >= UDA1380_MVOL))
  return 0;
 pr_debug("uda1380: hw write %x val %x\n", reg, value);
 if (codec->hw_write(codec->control_data, data, 3) == 3) {
  unsigned int val;
  i2c_master_send(codec->control_data, data, 1);
  i2c_master_recv(codec->control_data, data, 2);
  val = (data[0]<<8) | data[1];
  if (val != value) {
   pr_debug("uda1380: READ BACK VAL %x\n",
     (data[0]<<8) | data[1]);
   return -EIO;
  }
  if (reg >= 0x10)
   clear_bit(reg - 0x10, &uda1380_cache_dirty);
  return 0;
 } else
  return -EIO;
}
