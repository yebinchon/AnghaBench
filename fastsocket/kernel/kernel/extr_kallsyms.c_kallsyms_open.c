
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kallsym_iter* private; } ;
struct kallsym_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kallsyms_op ;
 int kfree (struct kallsym_iter*) ;
 struct kallsym_iter* kmalloc (int,int ) ;
 int reset_iter (struct kallsym_iter*,int ) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int kallsyms_open(struct inode *inode, struct file *file)
{





 struct kallsym_iter *iter;
 int ret;

 iter = kmalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter)
  return -ENOMEM;
 reset_iter(iter, 0);

 ret = seq_open(file, &kallsyms_op);
 if (ret == 0)
  ((struct seq_file *)file->private_data)->private = iter;
 else
  kfree(iter);
 return ret;
}
