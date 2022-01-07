
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int lock; int version; int read_pos; int count; int index; } ;
struct file {int f_version; int f_pos; scalar_t__ private_data; } ;
typedef int loff_t ;


 int EAGAIN ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int traverse (struct seq_file*,int ) ;

loff_t seq_lseek(struct file *file, loff_t offset, int origin)
{
 struct seq_file *m = (struct seq_file *)file->private_data;
 loff_t retval = -EINVAL;

 mutex_lock(&m->lock);
 m->version = file->f_version;
 switch (origin) {
  case 1:
   offset += file->f_pos;
  case 0:
   if (offset < 0)
    break;
   retval = offset;
   if (offset != m->read_pos) {
    while ((retval=traverse(m, offset)) == -EAGAIN)
     ;
    if (retval) {

     file->f_pos = 0;
     m->read_pos = 0;
     m->version = 0;
     m->index = 0;
     m->count = 0;
    } else {
     m->read_pos = offset;
     retval = file->f_pos = offset;
    }
   }
 }
 file->f_version = m->version;
 mutex_unlock(&m->lock);
 return retval;
}
