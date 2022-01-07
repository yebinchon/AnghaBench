
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct msm_adsp_module {scalar_t__ state; int num_commands; int id; int name; struct adsp_info* info; } ;
struct adsp_info {int send_irq; int write_ctrl; } ;


 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_CMD_M ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_CMD_WRITE_DONE_V ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_NO_ERR_V ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_READY_M ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_READY_V ;
 scalar_t__ ADSP_RTOS_WRITE_CTRL_WORD_STATUS_M ;
 scalar_t__ ADSP_STATE_ENABLED ;
 int EAGAIN ;
 int EIO ;
 int ENODEV ;
 int ENXIO ;
 scalar_t__ MSM_AD5_BASE ;
 scalar_t__ QDSP_RAMC_OFFSET ;
 int adsp_cmd_lock ;
 scalar_t__ adsp_get_queue_offset (struct adsp_info*,unsigned int) ;
 scalar_t__ adsp_validate_module (int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int ) ;
 int pr_warning (char*) ;
 scalar_t__ readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int writel (int,int ) ;

int __msm_adsp_write(struct msm_adsp_module *module, unsigned dsp_queue_addr,
     void *cmd_buf, size_t cmd_size)
{
 uint32_t ctrl_word;
 uint32_t dsp_q_addr;
 uint32_t dsp_addr;
 uint32_t cmd_id = 0;
 int cnt = 0;
 int ret_status = 0;
 unsigned long flags;
 struct adsp_info *info = module->info;

 spin_lock_irqsave(&adsp_cmd_lock, flags);

 if (module->state != ADSP_STATE_ENABLED) {
  spin_unlock_irqrestore(&adsp_cmd_lock, flags);
  pr_err("adsp: module %s not enabled before write\n",
         module->name);
  return -ENODEV;
 }
 if (adsp_validate_module(module->id)) {
  spin_unlock_irqrestore(&adsp_cmd_lock, flags);
  pr_info("adsp: module id validation failed %s  %d\n",
   module->name, module->id);
  return -ENXIO;
 }
 dsp_q_addr = adsp_get_queue_offset(info, dsp_queue_addr);
 dsp_q_addr &= ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M;






 while (((ctrl_word = readl(info->write_ctrl)) &
  ADSP_RTOS_WRITE_CTRL_WORD_READY_M) !=
  ADSP_RTOS_WRITE_CTRL_WORD_READY_V) {
  if (cnt > 100) {
   pr_err("adsp: timeout waiting for DSP write ready\n");
   ret_status = -EIO;
   goto fail;
  }
  pr_warning("adsp: waiting for DSP write ready\n");
  udelay(1);
  cnt++;
 }


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M);
 ctrl_word |= ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V;


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_CMD_M);


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M);
 ctrl_word |= dsp_q_addr;

 writel(ctrl_word, info->write_ctrl);





 writel(1, info->send_irq);





 cnt = 0;
 while ((readl(info->write_ctrl) &
  ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M) ==
  ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V) {
  if (cnt > 5000) {
   pr_err("adsp: timeout waiting for adsp ack\n");
   ret_status = -EIO;
   goto fail;
  }
  udelay(1);
  cnt++;
 }


 ctrl_word = readl(info->write_ctrl);

 if ((ctrl_word & ADSP_RTOS_WRITE_CTRL_WORD_STATUS_M) !=
    ADSP_RTOS_WRITE_CTRL_WORD_NO_ERR_V) {
  ret_status = -EAGAIN;
  goto fail;
 }




 dsp_addr = (ctrl_word & ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M) +
     (uint32_t)MSM_AD5_BASE;

 if (dsp_addr < (uint32_t)(MSM_AD5_BASE + QDSP_RAMC_OFFSET)) {
  uint16_t *buf_ptr = (uint16_t *) cmd_buf;
  uint16_t *dsp_addr16 = (uint16_t *)dsp_addr;
  cmd_size /= sizeof(uint16_t);


  cmd_id = (uint32_t) buf_ptr[0];


  cmd_size++;
  while (--cmd_size)
   *dsp_addr16++ = *buf_ptr++;
 } else {
  uint32_t *buf_ptr = (uint32_t *) cmd_buf;
  uint32_t *dsp_addr32 = (uint32_t *)dsp_addr;
  cmd_size /= sizeof(uint32_t);


  cmd_id = buf_ptr[0];

  cmd_size++;
  while (--cmd_size)
   *dsp_addr32++ = *buf_ptr++;
 }


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M);
 ctrl_word |= ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V;


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_CMD_M);
 ctrl_word |= ADSP_RTOS_WRITE_CTRL_WORD_CMD_WRITE_DONE_V;


 ctrl_word &= ~(ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M);
 ctrl_word |= dsp_q_addr;

 writel(ctrl_word, info->write_ctrl);






 writel(1, info->send_irq);

 module->num_commands++;

fail:
 spin_unlock_irqrestore(&adsp_cmd_lock, flags);
 return ret_status;
}
