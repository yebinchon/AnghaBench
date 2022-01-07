
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int data; int (* setscl ) (int ,int) ;int (* setsda ) (int ,int) ;scalar_t__ (* getscl ) (int ) ;} ;
struct i2c_adapter {int class; struct i2c_algo_bit_data* algo_data; } ;


 int I2C_CLASS_DDC ;
 unsigned char* fb_do_probe_ddc_edid (struct i2c_adapter*) ;
 int msleep (int) ;
 int stub1 (int ,int) ;
 int stub10 (int ,int) ;
 scalar_t__ stub11 (int ) ;
 int stub12 (int ,int) ;
 int stub13 (int ,int) ;
 int stub14 (int ,int) ;
 int stub15 (int ,int) ;
 int stub16 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 scalar_t__ stub4 (int ) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int) ;
 int stub7 (int ,int) ;
 int stub8 (int ,int) ;
 int stub9 (int ,int) ;

unsigned char *fb_ddc_read(struct i2c_adapter *adapter)
{
 struct i2c_algo_bit_data *algo_data = adapter->algo_data;
 unsigned char *edid = ((void*)0);
 int i, j;

 algo_data->setscl(algo_data->data, 1);

 for (i = 0; i < 3; i++) {



  algo_data->setsda(algo_data->data, 1);
  msleep(13);

  algo_data->setscl(algo_data->data, 1);
  for (j = 0; j < 5; j++) {
   msleep(10);
   if (algo_data->getscl(algo_data->data))
    break;
  }
  if (j == 5)
   continue;

  algo_data->setsda(algo_data->data, 0);
  msleep(15);
  algo_data->setscl(algo_data->data, 0);
  msleep(15);
  algo_data->setsda(algo_data->data, 1);
  msleep(15);


  edid = fb_do_probe_ddc_edid(adapter);
  algo_data->setsda(algo_data->data, 0);
  algo_data->setscl(algo_data->data, 0);
  msleep(15);

  algo_data->setscl(algo_data->data, 1);
  for (j = 0; j < 10; j++) {
   msleep(10);
   if (algo_data->getscl(algo_data->data))
    break;
  }

  algo_data->setsda(algo_data->data, 1);
  msleep(15);
  algo_data->setscl(algo_data->data, 0);
  algo_data->setsda(algo_data->data, 0);
  if (edid)
   break;
 }



 algo_data->setsda(algo_data->data, 1);
 algo_data->setscl(algo_data->data, 1);

 adapter->class |= I2C_CLASS_DDC;
 return edid;
}
