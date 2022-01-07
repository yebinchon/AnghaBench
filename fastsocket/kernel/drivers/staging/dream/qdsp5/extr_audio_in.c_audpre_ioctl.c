
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int agc; int ns; int iir; int lock; } ;
typedef int enable_mask ;


 int AGC_ENABLE ;
 int AGC_PARAM_SIZE ;




 int EFAULT ;
 int EINVAL ;
 int IIR_ENABLE ;
 int IIR_PARAM_SIZE ;
 int NS_ENABLE ;
 int NS_PARAM_SIZE ;
 int audio_enable_agc (struct audio_in*,int) ;
 int audio_enable_ns (struct audio_in*,int) ;
 int audio_enable_tx_iir (struct audio_in*,int) ;
 int copy_from_user (int*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,...) ;

__attribute__((used)) static long audpre_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct audio_in *audio = file->private_data;
 int rc = 0, enable;
 uint16_t enable_mask;




 mutex_lock(&audio->lock);
 switch (cmd) {
 case 131: {
  if (copy_from_user(&enable_mask, (void *) arg,
    sizeof(enable_mask)))
   goto out_fault;

  enable = (enable_mask & AGC_ENABLE) ? 1 : 0;
  audio_enable_agc(audio, enable);
  enable = (enable_mask & NS_ENABLE) ? 1 : 0;
  audio_enable_ns(audio, enable);
  enable = (enable_mask & IIR_ENABLE) ? 1 : 0;
  audio_enable_tx_iir(audio, enable);
  break;
 }
 case 130: {
  if (copy_from_user(&audio->agc, (void *) arg,
    sizeof(audio->agc)))
   goto out_fault;






  break;
 }
 case 129: {
  if (copy_from_user(&audio->ns, (void *) arg,
    sizeof(audio->ns)))
   goto out_fault;






  break;
 }
 case 128: {
  if (copy_from_user(&audio->iir, (void *) arg,
    sizeof(audio->iir)))
   goto out_fault;







  break;
 }
 default:
  rc = -EINVAL;
 }

 goto out;

out_fault:
 rc = -EFAULT;
out:
 mutex_unlock(&audio->lock);
 return rc;
}
