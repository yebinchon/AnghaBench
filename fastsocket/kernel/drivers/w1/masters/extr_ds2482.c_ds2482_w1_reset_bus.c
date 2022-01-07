
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2482_w1_chan {int channel; struct ds2482_data* pdev; } ;
struct ds2482_data {int w1_count; int access_lock; } ;


 int DS2482_CMD_1WIRE_RESET ;
 int DS2482_CMD_WRITE_CONFIG ;
 int DS2482_REG_STS_PPD ;
 int DS2482_REG_STS_RST ;
 int ds2482_send_cmd (struct ds2482_data*,int ) ;
 int ds2482_send_cmd_data (struct ds2482_data*,int ,int) ;
 int ds2482_set_channel (struct ds2482_data*,int ) ;
 int ds2482_wait_1wire_idle (struct ds2482_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u8 ds2482_w1_reset_bus(void *data)
{
 struct ds2482_w1_chan *pchan = data;
 struct ds2482_data *pdev = pchan->pdev;
 int err;
 u8 retval = 1;

 mutex_lock(&pdev->access_lock);


 ds2482_wait_1wire_idle(pdev);
 if (pdev->w1_count > 1)
  ds2482_set_channel(pdev, pchan->channel);


 err = ds2482_send_cmd(pdev, DS2482_CMD_1WIRE_RESET);
 if (err >= 0) {

  err = ds2482_wait_1wire_idle(pdev);
  retval = !(err & DS2482_REG_STS_PPD);


  if (err & DS2482_REG_STS_RST)
   ds2482_send_cmd_data(pdev, DS2482_CMD_WRITE_CONFIG,
          0xF0);
 }

 mutex_unlock(&pdev->access_lock);

 return retval;
}
