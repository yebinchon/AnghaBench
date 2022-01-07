
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ds2482_data {int channel; int client; int read_prt; } ;


 int DS2482_CMD_CHANNEL_SELECT ;
 int DS2482_PTR_CODE_CHANNEL ;
 scalar_t__* ds2482_chan_rd ;
 int * ds2482_chan_wr ;
 scalar_t__ i2c_smbus_read_byte (int ) ;
 scalar_t__ i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int ds2482_set_channel(struct ds2482_data *pdev, u8 channel)
{
 if (i2c_smbus_write_byte_data(pdev->client, DS2482_CMD_CHANNEL_SELECT,
          ds2482_chan_wr[channel]) < 0)
  return -1;

 pdev->read_prt = DS2482_PTR_CODE_CHANNEL;
 pdev->channel = -1;
 if (i2c_smbus_read_byte(pdev->client) == ds2482_chan_rd[channel]) {
  pdev->channel = channel;
  return 0;
 }
 return -1;
}
