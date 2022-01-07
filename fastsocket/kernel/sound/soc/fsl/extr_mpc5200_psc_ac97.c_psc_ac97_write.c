
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct TYPE_6__ {int mutex; TYPE_2__* psc_regs; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {int ac97_cmd; TYPE_1__ sr_csr; } ;


 int MPC52xx_PSC_SR_CMDSEND ;
 int in_be16 (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int out_be32 (int *,unsigned short) ;
 int pr_err (char*) ;
 TYPE_3__* psc_dma ;
 int spin_event_timeout (int,int,int ) ;

__attribute__((used)) static void psc_ac97_write(struct snd_ac97 *ac97,
    unsigned short reg, unsigned short val)
{
 int status;

 mutex_lock(&psc_dma->mutex);


 status = spin_event_timeout(!(in_be16(&psc_dma->psc_regs->sr_csr.status) &
    MPC52xx_PSC_SR_CMDSEND), 100, 0);
 if (status == 0) {
  pr_err("timeout on ac97 bus (write)\n");
  goto out;
 }

 out_be32(&psc_dma->psc_regs->ac97_cmd,
   ((reg & 0x7f) << 24) | (val << 8));

 out:
 mutex_unlock(&psc_dma->mutex);
}
