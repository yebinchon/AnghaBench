
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int qmi_release(struct inode *ip, struct file *fp)
{
 return 0;
}
