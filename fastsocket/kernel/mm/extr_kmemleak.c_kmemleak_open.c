
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int atomic_read (int *) ;
 int kmemleak_enabled ;
 int kmemleak_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int kmemleak_open(struct inode *inode, struct file *file)
{
 if (!atomic_read(&kmemleak_enabled))
  return -EBUSY;

 return seq_open(file, &kmemleak_seq_ops);
}
