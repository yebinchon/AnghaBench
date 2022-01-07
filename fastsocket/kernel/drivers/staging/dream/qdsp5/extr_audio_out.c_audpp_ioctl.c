
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct file {struct audio* private_data; } ;
struct audio {int adrc; int eq; int iir; int lock; } ;
typedef int enable_mask ;


 int ADRC_ENABLE ;




 int EFAULT ;
 int EINVAL ;
 int EQ_ENABLE ;
 int IIR_ENABLE ;
 int audio_enable_adrc (struct audio*,int) ;
 int audio_enable_eq (struct audio*,int) ;
 int audio_enable_rx_iir (struct audio*,int) ;
 int copy_from_user (int*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long audpp_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct audio *audio = file->private_data;
 int rc = 0, enable;
 uint16_t enable_mask;

 mutex_lock(&audio->lock);
 switch (cmd) {
 case 131:
  if (copy_from_user(&enable_mask, (void *) arg, sizeof(enable_mask)))
   goto out_fault;

  enable = (enable_mask & ADRC_ENABLE)? 1 : 0;
  audio_enable_adrc(audio, enable);
  enable = (enable_mask & EQ_ENABLE)? 1 : 0;
  audio_enable_eq(audio, enable);
  enable = (enable_mask & IIR_ENABLE)? 1 : 0;
  audio_enable_rx_iir(audio, enable);
  break;

 case 130:
  if (copy_from_user(&audio->adrc, (void*) arg, sizeof(audio->adrc)))
   goto out_fault;
  break;

 case 129:
  if (copy_from_user(&audio->eq, (void*) arg, sizeof(audio->eq)))
   goto out_fault;
  break;

 case 128:
  if (copy_from_user(&audio->iir, (void*) arg, sizeof(audio->iir)))
   goto out_fault;
  break;

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
