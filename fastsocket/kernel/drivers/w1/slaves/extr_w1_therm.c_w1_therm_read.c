
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct w1_slave {int* rom; TYPE_1__* family; struct w1_master* master; } ;
struct w1_master {int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int rom ;
struct TYPE_2__ {int fid; } ;


 int PAGE_SIZE ;
 int W1_CONVERT_TEMP ;
 int W1_READ_SCRATCHPAD ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int dev_warn (struct device*,char*,...) ;
 int memcpy (int*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int msleep (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int,...) ;
 scalar_t__ w1_calc_crc8 (scalar_t__*,int) ;
 int w1_convert_temp (scalar_t__*,int ) ;
 int w1_next_pullup (struct w1_master*,unsigned int) ;
 int w1_read_block (struct w1_master*,scalar_t__*,int) ;
 int w1_reset_select_slave (struct w1_slave*) ;
 scalar_t__ w1_strong_pullup ;
 int w1_therm_check_rom (scalar_t__*) ;
 int w1_write_8 (struct w1_master*,int ) ;

__attribute__((used)) static ssize_t w1_therm_read(struct device *device,
 struct device_attribute *attr, char *buf)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 struct w1_master *dev = sl->master;
 u8 rom[9], crc, verdict;
 int i, max_trying = 10;
 ssize_t c = PAGE_SIZE;

 mutex_lock(&dev->mutex);

 memset(rom, 0, sizeof(rom));

 verdict = 0;
 crc = 0;

 while (max_trying--) {
  if (!w1_reset_select_slave(sl)) {
   int count = 0;
   unsigned int tm = 750;


   if (w1_strong_pullup)
    w1_next_pullup(dev, tm);
   w1_write_8(dev, W1_CONVERT_TEMP);
   if (!w1_strong_pullup)
    msleep(tm);

   if (!w1_reset_select_slave(sl)) {

    w1_write_8(dev, W1_READ_SCRATCHPAD);
    if ((count = w1_read_block(dev, rom, 9)) != 9) {
     dev_warn(device, "w1_read_block() "
      "returned %u instead of 9.\n",
      count);
    }

    crc = w1_calc_crc8(rom, 8);

    if (rom[8] == crc)
     verdict = 1;
   }
  }

  if (!w1_therm_check_rom(rom))
   break;
 }

 for (i = 0; i < 9; ++i)
  c -= snprintf(buf + PAGE_SIZE - c, c, "%02x ", rom[i]);
 c -= snprintf(buf + PAGE_SIZE - c, c, ": crc=%02x %s\n",
      crc, (verdict) ? "YES" : "NO");
 if (verdict)
  memcpy(sl->rom, rom, sizeof(sl->rom));
 else
  dev_warn(device, "18S20 doesn't respond to CONVERT_TEMP.\n");

 for (i = 0; i < 9; ++i)
  c -= snprintf(buf + PAGE_SIZE - c, c, "%02x ", sl->rom[i]);

 c -= snprintf(buf + PAGE_SIZE - c, c, "t=%d\n",
  w1_convert_temp(rom, sl->family->fid));
 mutex_unlock(&dev->mutex);

 return PAGE_SIZE - c;
}
