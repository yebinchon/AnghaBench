
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int cseq; int file_mode; scalar_t__ writeq; scalar_t__ readq; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ is_read_mode (int ) ;
 scalar_t__ is_write_mode (int ) ;
 scalar_t__ snd_seq_kernel_client_write_poll (int ,struct file*,int *) ;
 scalar_t__ snd_seq_oss_readq_poll (scalar_t__,struct file*,int *) ;

unsigned int
snd_seq_oss_poll(struct seq_oss_devinfo *dp, struct file *file, poll_table * wait)
{
 unsigned int mask = 0;


 if (dp->readq && is_read_mode(dp->file_mode)) {
  if (snd_seq_oss_readq_poll(dp->readq, file, wait))
   mask |= POLLIN | POLLRDNORM;
 }


 if (dp->writeq && is_write_mode(dp->file_mode)) {
  if (snd_seq_kernel_client_write_poll(dp->cseq, file, wait))
   mask |= POLLOUT | POLLWRNORM;
 }
 return mask;
}
