
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;
struct TYPE_2__ {int dsp_minor; int play_ndelay; int rec_ndelay; int mixer_minor; int flags; scalar_t__ nresets; } ;


 int EBUSY ;
 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int F_AUDIO_READ_INUSE ;
 int F_AUDIO_WRITE_INUSE ;
 int F_DISABLE_WRITE_NDELAY ;
 int O_NDELAY ;
 TYPE_1__ dev ;
 int dsp_open (struct file*) ;
 int iminor (struct inode*) ;
 int set_default_play_audio_parameters () ;
 int set_default_rec_audio_parameters () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int dev_open(struct inode *inode, struct file *file)
{
 int minor = iminor(inode);
 int err = 0;

 if (minor == dev.dsp_minor) {
  if ((file->f_mode & FMODE_WRITE &&
       test_bit(F_AUDIO_WRITE_INUSE, &dev.flags)) ||
      (file->f_mode & FMODE_READ &&
       test_bit(F_AUDIO_READ_INUSE, &dev.flags)))
   return -EBUSY;

  if ((err = dsp_open(file)) >= 0) {
   dev.nresets = 0;
   if (file->f_mode & FMODE_WRITE) {
    set_default_play_audio_parameters();
    if (!test_bit(F_DISABLE_WRITE_NDELAY, &dev.flags))
     dev.play_ndelay = (file->f_flags & O_NDELAY) ? 1 : 0;
    else
     dev.play_ndelay = 0;
   }
   if (file->f_mode & FMODE_READ) {
    set_default_rec_audio_parameters();
    dev.rec_ndelay = (file->f_flags & O_NDELAY) ? 1 : 0;
   }
  }
 }
 else if (minor == dev.mixer_minor) {

 } else
  err = -EINVAL;

 return err;
}
