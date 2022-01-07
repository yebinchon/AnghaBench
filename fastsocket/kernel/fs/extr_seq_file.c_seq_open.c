
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {struct seq_operations const* op; int lock; } ;
struct file {int f_mode; scalar_t__ f_version; struct seq_file* private_data; } ;


 int ENOMEM ;
 int FMODE_PWRITE ;
 int GFP_KERNEL ;
 struct seq_file* kmalloc (int,int ) ;
 int memset (struct seq_file*,int ,int) ;
 int mutex_init (int *) ;

int seq_open(struct file *file, const struct seq_operations *op)
{
 struct seq_file *p = file->private_data;

 if (!p) {
  p = kmalloc(sizeof(*p), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
  file->private_data = p;
 }
 memset(p, 0, sizeof(*p));
 mutex_init(&p->lock);
 p->op = op;






 file->f_version = 0;
 file->f_mode &= ~FMODE_PWRITE;
 return 0;
}
