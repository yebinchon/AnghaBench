
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int hdq_irqstatus; int hdq_mutex; int dev; int hdq_spinlock; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_DIR ;
 int OMAP_HDQ_CTRL_STATUS_GO ;
 int OMAP_HDQ_CTRL_STATUS_INITIALIZATION ;
 int OMAP_HDQ_FLAG_CLEAR ;
 int OMAP_HDQ_INT_STATUS ;
 int OMAP_HDQ_INT_STATUS_TIMEOUT ;
 int OMAP_HDQ_TIMEOUT ;
 int dev_dbg (int ,char*,...) ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int hdq_reg_merge (struct hdq_data*,int ,int,int) ;
 int hdq_wait_for_flag (struct hdq_data*,int ,int,int ,int*) ;
 int hdq_wait_queue ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int omap_hdq_break(struct hdq_data *hdq_data)
{
 int ret = 0;
 u8 tmp_status;
 unsigned long irqflags;

 ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (ret < 0) {
  dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
  ret = -EINTR;
  goto rtn;
 }

 spin_lock_irqsave(&hdq_data->hdq_spinlock, irqflags);

 hdq_reg_in(hdq_data, OMAP_HDQ_INT_STATUS);

 hdq_data->hdq_irqstatus = 0;
 spin_unlock_irqrestore(&hdq_data->hdq_spinlock, irqflags);


 hdq_reg_merge(hdq_data, OMAP_HDQ_CTRL_STATUS,
  OMAP_HDQ_CTRL_STATUS_INITIALIZATION | OMAP_HDQ_CTRL_STATUS_GO,
  OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_INITIALIZATION |
  OMAP_HDQ_CTRL_STATUS_GO);


 ret = wait_event_timeout(hdq_wait_queue,
  hdq_data->hdq_irqstatus, OMAP_HDQ_TIMEOUT);
 if (ret == 0) {
  dev_dbg(hdq_data->dev, "break wait elapsed\n");
  ret = -EINTR;
  goto out;
 }

 tmp_status = hdq_data->hdq_irqstatus;

 if (!(tmp_status & OMAP_HDQ_INT_STATUS_TIMEOUT)) {
  dev_dbg(hdq_data->dev, "timeout waiting for TIMEOUT, %x",
    tmp_status);
  ret = -ETIMEDOUT;
  goto out;
 }




 ret = hdq_wait_for_flag(hdq_data, OMAP_HDQ_CTRL_STATUS,
   OMAP_HDQ_CTRL_STATUS_INITIALIZATION |
   OMAP_HDQ_CTRL_STATUS_GO, OMAP_HDQ_FLAG_CLEAR,
   &tmp_status);
 if (ret)
  dev_dbg(hdq_data->dev, "timeout waiting INIT&GO bits"
   "return to zero, %x", tmp_status);

out:
 mutex_unlock(&hdq_data->hdq_mutex);
rtn:
 return ret;
}
