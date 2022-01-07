
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_device {int dummy; } ;
struct TYPE_2__ {unsigned long data; int function; } ;
struct snd_opl3 {int seq_client; int hardware; scalar_t__ sys_timer_status; int sys_timer_lock; TYPE_1__ tlist; int seq_dev_num; int card; int voice_lock; } ;


 int EINVAL ;
 int OPL3_HW_MASK ;
 scalar_t__ SNDRV_SEQ_DEVICE_ARGPTR (struct snd_seq_device*) ;
 int init_timer (TYPE_1__*) ;
 int snd_opl3_init_seq_oss (struct snd_opl3*,char*) ;
 int snd_opl3_synth_create_port (struct snd_opl3*) ;
 int snd_opl3_timer_func ;
 int snd_seq_create_kernel_client (int ,int ,char*) ;
 int snd_seq_delete_kernel_client (int) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int snd_opl3_seq_new_device(struct snd_seq_device *dev)
{
 struct snd_opl3 *opl3;
 int client, err;
 char name[32];
 int opl_ver;

 opl3 = *(struct snd_opl3 **)SNDRV_SEQ_DEVICE_ARGPTR(dev);
 if (opl3 == ((void*)0))
  return -EINVAL;

 spin_lock_init(&opl3->voice_lock);

 opl3->seq_client = -1;


 opl_ver = (opl3->hardware & OPL3_HW_MASK) >> 8;
 sprintf(name, "OPL%i FM synth", opl_ver);
 client = opl3->seq_client =
  snd_seq_create_kernel_client(opl3->card, opl3->seq_dev_num,
          name);
 if (client < 0)
  return client;

 if ((err = snd_opl3_synth_create_port(opl3)) < 0) {
  snd_seq_delete_kernel_client(client);
  opl3->seq_client = -1;
  return err;
 }


 init_timer(&opl3->tlist);
 opl3->tlist.function = snd_opl3_timer_func;
 opl3->tlist.data = (unsigned long) opl3;
 spin_lock_init(&opl3->sys_timer_lock);
 opl3->sys_timer_status = 0;




 return 0;
}
