
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {char* buf; unsigned int size; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int num_possible_cpus () ;
 int show_stat ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int stat_open(struct inode *inode, struct file *file)
{
 unsigned size = 4096 * (1 + num_possible_cpus() / 32);
 char *buf;
 struct seq_file *m;
 int res;


 if (size > 128 * 1024)
  size = 128 * 1024;
 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 res = single_open(file, show_stat, ((void*)0));
 if (!res) {
  m = file->private_data;
  m->buf = buf;
  m->size = size;
 } else
  kfree(buf);
 return res;
}
