
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int hdq_irqstatus; int dev; int hdq_spinlock; } ;


 int ETIMEDOUT ;
 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_DIR ;
 int OMAP_HDQ_CTRL_STATUS_GO ;
 int OMAP_HDQ_FLAG_CLEAR ;
 int OMAP_HDQ_INT_STATUS ;
 int OMAP_HDQ_INT_STATUS_TXCOMPLETE ;
 int OMAP_HDQ_TIMEOUT ;
 int OMAP_HDQ_TX_DATA ;
 int dev_dbg (int ,char*,...) ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int hdq_reg_merge (struct hdq_data*,int ,int,int) ;
 int hdq_reg_out (struct hdq_data*,int ,int) ;
 int hdq_wait_for_flag (struct hdq_data*,int ,int,int ,int*) ;
 int hdq_wait_queue ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int hdq_write_byte(struct hdq_data *hdq_data, u8 val, u8 *status)
{
 int ret;
 u8 tmp_status;
 unsigned long irqflags;

 *status = 0;

 spin_lock_irqsave(&hdq_data->hdq_spinlock, irqflags);

 hdq_reg_in(hdq_data, OMAP_HDQ_INT_STATUS);

 hdq_data->hdq_irqstatus = 0;
 spin_unlock_irqrestore(&hdq_data->hdq_spinlock, irqflags);

 hdq_reg_out(hdq_data, OMAP_HDQ_TX_DATA, val);


 hdq_reg_merge(hdq_data, OMAP_HDQ_CTRL_STATUS, OMAP_HDQ_CTRL_STATUS_GO,
  OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO);

 ret = wait_event_timeout(hdq_wait_queue,
  hdq_data->hdq_irqstatus, OMAP_HDQ_TIMEOUT);
 if (ret == 0) {
  dev_dbg(hdq_data->dev, "TX wait elapsed\n");
  goto out;
 }

 *status = hdq_data->hdq_irqstatus;

 if (!(*status & OMAP_HDQ_INT_STATUS_TXCOMPLETE)) {
  dev_dbg(hdq_data->dev, "timeout waiting for"
   "TXCOMPLETE/RXCOMPLETE, %x", *status);
  ret = -ETIMEDOUT;
  goto out;
 }


 ret = hdq_wait_for_flag(hdq_data, OMAP_HDQ_CTRL_STATUS,
   OMAP_HDQ_CTRL_STATUS_GO,
   OMAP_HDQ_FLAG_CLEAR, &tmp_status);
 if (ret) {
  dev_dbg(hdq_data->dev, "timeout waiting GO bit"
   "return to zero, %x", tmp_status);
 }

out:
 return ret;
}
