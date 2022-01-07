
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adsp_info {int send_irq; int read_ctrl; } ;


 int ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V ;
 int ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M ;
 int ADSP_RTOS_READ_CTRL_WORD_CONT_V ;
 int ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M ;
 int ADSP_RTOS_READ_CTRL_WORD_FLAG_M ;
 int ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V ;
 int ADSP_RTOS_READ_CTRL_WORD_READY_M ;
 int ADSP_RTOS_READ_CTRL_WORD_READY_V ;
 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 scalar_t__ MSM_AD5_BASE ;
 int adsp_cmd_lock ;
 int adsp_rtos_read_ctrl_word_cmd_tast_to_h_v (struct adsp_info*,void*) ;
 int pr_err (char*,int) ;
 int pr_warning (char*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int adsp_get_event(struct adsp_info *info)
{
 uint32_t ctrl_word;
 uint32_t ready;
 void *dsp_addr;
 uint32_t cmd_type;
 int cnt;
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&adsp_cmd_lock, flags);
 for (cnt = 0; cnt < 10; cnt++) {
  ctrl_word = readl(info->read_ctrl);

  if ((ctrl_word & ADSP_RTOS_READ_CTRL_WORD_FLAG_M) ==
      ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V)
   goto ready;

  udelay(10);
 }
 pr_warning("adsp: not ready after 100uS\n");
 rc = -EBUSY;
 goto done;

ready:




 ready = ctrl_word & ADSP_RTOS_READ_CTRL_WORD_READY_M;
 if ((ready != ADSP_RTOS_READ_CTRL_WORD_READY_V) &&
     (ready != ADSP_RTOS_READ_CTRL_WORD_CONT_V)) {
  rc = -EAGAIN;
  goto done;
 }




 cmd_type = ctrl_word & ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M;


 dsp_addr = (void *)((ctrl_word &
        ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M) +
       (uint32_t)MSM_AD5_BASE);


 if (cmd_type != ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V) {
  pr_err("adsp: unknown dsp cmd_type %d\n", cmd_type);
  rc = -EIO;
  goto done;
 }

 adsp_rtos_read_ctrl_word_cmd_tast_to_h_v(info, dsp_addr);

 ctrl_word = readl(info->read_ctrl);
 ctrl_word &= ~ADSP_RTOS_READ_CTRL_WORD_READY_M;


 writel(ctrl_word, info->read_ctrl);


 writel(1, info->send_irq);

done:
 spin_unlock_irqrestore(&adsp_cmd_lock, flags);
 return rc;
}
