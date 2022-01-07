
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int loff_t ;


 int smb_proc_write (struct inode*,int ,int ,int *) ;

__attribute__((used)) static int
smb_proc_trunc32(struct inode *inode, loff_t length)
{





 return smb_proc_write(inode, length, 0, ((void*)0));
}
