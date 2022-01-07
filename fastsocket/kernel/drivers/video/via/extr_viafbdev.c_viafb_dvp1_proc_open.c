
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,int *) ;
 int viafb_dvp1_proc_show ;

__attribute__((used)) static int viafb_dvp1_proc_open(struct inode *inode, struct file *file)
{
 return single_open(file, viafb_dvp1_proc_show, ((void*)0));
}
