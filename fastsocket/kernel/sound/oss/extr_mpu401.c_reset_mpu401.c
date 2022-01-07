
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int initialized; scalar_t__ uart_mode; scalar_t__ last_status; scalar_t__ m_left; scalar_t__ m_ptr; int m_state; int lock; } ;


 scalar_t__ MPU_ACK ;
 int MPU_RESET ;
 int ST_INIT ;
 scalar_t__ input_avail (struct mpu_config*) ;
 int output_ready (struct mpu_config*) ;
 scalar_t__ read_data (struct mpu_config*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_command (struct mpu_config*,int ) ;

__attribute__((used)) static int reset_mpu401(struct mpu_config *devc)
{
 unsigned long flags;
 int ok, timeout, n;
 int timeout_limit;






 ok = 0;

 timeout_limit = devc->initialized ? 30000 : 100000;
 devc->initialized = 1;

 for (n = 0; n < 2 && !ok; n++)
 {
  for (timeout = timeout_limit; timeout > 0 && !ok; timeout--)
     ok = output_ready(devc);

  write_command(devc, MPU_RESET);
  for (timeout = timeout_limit * 2; timeout > 0 && !ok; timeout--)
  {
   spin_lock_irqsave(&devc->lock,flags);
   if (input_avail(devc))
    if (read_data(devc) == MPU_ACK)
     ok = 1;
   spin_unlock_irqrestore(&devc->lock,flags);
  }

 }

 devc->m_state = ST_INIT;
 devc->m_ptr = 0;
 devc->m_left = 0;
 devc->last_status = 0;
 devc->uart_mode = 0;

 return ok;
}
