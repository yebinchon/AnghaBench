
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int afs_proc_cell_vlservers_release(struct inode *inode,
        struct file *file)
{
 return seq_release(inode, file);
}
