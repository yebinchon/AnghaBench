
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int name; } ;


 int EAGAIN ;
 int __msm_adsp_write (struct msm_adsp_module*,unsigned int,void*,size_t) ;
 int pr_warning (char*,int ,int,int) ;
 int udelay (int) ;

int msm_adsp_write(struct msm_adsp_module *module, unsigned dsp_queue_addr,
     void *cmd_buf, size_t cmd_size)
{
 int rc, retries = 0;
 do {
  rc = __msm_adsp_write(module, dsp_queue_addr, cmd_buf, cmd_size);
  if (rc == -EAGAIN)
   udelay(10);
 } while(rc == -EAGAIN && retries++ < 100);
 if (retries > 50)
  pr_warning("adsp: %s command took %d attempts: rc %d\n",
    module->name, retries, rc);
 return rc;
}
