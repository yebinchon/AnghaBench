
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int msm_open_common (struct inode*,struct file*,int) ;

__attribute__((used)) static int msm_open(struct inode *inode, struct file *filep)
{
 return msm_open_common(inode, filep, 1);
}
