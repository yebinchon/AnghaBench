
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int hdq_mutex; scalar_t__ init_trans; int dev; } ;


 int EINTR ;
 int dev_dbg (int ,char*) ;
 int hdq_read_byte (struct hdq_data*,int*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int omap_hdq_put (struct hdq_data*) ;

__attribute__((used)) static u8 omap_w1_read_byte(void *_hdq)
{
 struct hdq_data *hdq_data = _hdq;
 u8 val = 0;
 int ret;

 ret = hdq_read_byte(hdq_data, &val);
 if (ret) {
  ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
  if (ret < 0) {
   dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
   return -EINTR;
  }
  hdq_data->init_trans = 0;
  mutex_unlock(&hdq_data->hdq_mutex);
  omap_hdq_put(hdq_data);
  return -1;
 }


 if (hdq_data->init_trans) {
  ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
  if (ret < 0) {
   dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
   return -EINTR;
  }
  hdq_data->init_trans = 0;
  mutex_unlock(&hdq_data->hdq_mutex);
  omap_hdq_put(hdq_data);
 }

 return val;
}
