
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int SNDRV_DEVICE_TYPE_PCM_CAPTURE ;
 int SNDRV_DEVICE_TYPE_PCM_PLAYBACK ;
 int S_ISCHR (int ) ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 scalar_t__ imajor (struct inode*) ;
 unsigned int iminor (struct inode*) ;
 int snd_lookup_minor_data (unsigned int,int ) ;
 scalar_t__ snd_major ;

__attribute__((used)) static struct file *snd_pcm_file_fd(int fd)
{
 struct file *file;
 struct inode *inode;
 unsigned int minor;

 file = fget(fd);
 if (!file)
  return ((void*)0);
 inode = file->f_path.dentry->d_inode;
 if (!S_ISCHR(inode->i_mode) ||
     imajor(inode) != snd_major) {
  fput(file);
  return ((void*)0);
 }
 minor = iminor(inode);
 if (!snd_lookup_minor_data(minor, SNDRV_DEVICE_TYPE_PCM_PLAYBACK) &&
     !snd_lookup_minor_data(minor, SNDRV_DEVICE_TYPE_PCM_CAPTURE)) {
  fput(file);
  return ((void*)0);
 }
 return file;
}
