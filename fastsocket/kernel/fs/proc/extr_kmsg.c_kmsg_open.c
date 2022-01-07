
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int do_syslog (int,int *,int ) ;

__attribute__((used)) static int kmsg_open(struct inode * inode, struct file * file)
{
 return do_syslog(1,((void*)0),0);
}
