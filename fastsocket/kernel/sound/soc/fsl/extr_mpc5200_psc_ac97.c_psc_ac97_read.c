
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
struct TYPE_5__ {int ac97_data; TYPE_1__ sr_csr; int ac97_cmd; } ;


 unsigned short ENODEV ;
 int MPC52xx_PSC_SR_CMDSEND ;
 int MPC52xx_PSC_SR_DATA_VAL ;
 int in_be16 (int *) ;
 unsigned int in_be32 (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int out_be32 (int *,int) ;
 int pr_err (char*,...) ;
 TYPE_3__* psc_dma ;
 int spin_event_timeout (int,int,int ) ;

__attribute__((used)) static unsigned short psc_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 int status;
 unsigned int val;

 mutex_lock(&psc_dma->mutex);


 status = spin_event_timeout(!(in_be16(&psc_dma->psc_regs->sr_csr.status) &
    MPC52xx_PSC_SR_CMDSEND), 100, 0);
 if (status == 0) {
  pr_err("timeout on ac97 bus (rdy)\n");
  mutex_unlock(&psc_dma->mutex);
  return -ENODEV;
 }


 in_be32(&psc_dma->psc_regs->ac97_data);


 out_be32(&psc_dma->psc_regs->ac97_cmd, (1<<31) | ((reg & 0x7f) << 24));


 status = spin_event_timeout((in_be16(&psc_dma->psc_regs->sr_csr.status) &
    MPC52xx_PSC_SR_DATA_VAL), 100, 0);
 if (status == 0) {
  pr_err("timeout on ac97 read (val) %x\n",
    in_be16(&psc_dma->psc_regs->sr_csr.status));
  mutex_unlock(&psc_dma->mutex);
  return -ENODEV;
 }

 val = in_be32(&psc_dma->psc_regs->ac97_data);
 if (((val >> 24) & 0x7f) != reg) {
  pr_err("reg echo error on ac97 read\n");
  mutex_unlock(&psc_dma->mutex);
  return -ENODEV;
 }
 val = (val >> 8) & 0xffff;

 mutex_unlock(&psc_dma->mutex);
 return (unsigned short) val;
}
