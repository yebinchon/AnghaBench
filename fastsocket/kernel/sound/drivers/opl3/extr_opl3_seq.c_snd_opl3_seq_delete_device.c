
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int dummy; } ;
struct snd_opl3 {int seq_client; } ;


 int EINVAL ;
 scalar_t__ SNDRV_SEQ_DEVICE_ARGPTR (struct snd_seq_device*) ;
 int snd_opl3_free_seq_oss (struct snd_opl3*) ;
 int snd_seq_delete_kernel_client (int) ;

__attribute__((used)) static int snd_opl3_seq_delete_device(struct snd_seq_device *dev)
{
 struct snd_opl3 *opl3;

 opl3 = *(struct snd_opl3 **)SNDRV_SEQ_DEVICE_ARGPTR(dev);
 if (opl3 == ((void*)0))
  return -EINVAL;




 if (opl3->seq_client >= 0) {
  snd_seq_delete_kernel_client(opl3->seq_client);
  opl3->seq_client = -1;
 }
 return 0;
}
