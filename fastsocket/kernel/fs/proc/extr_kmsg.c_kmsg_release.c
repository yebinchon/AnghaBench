
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int do_syslog (int ,int *,int ) ;

__attribute__((used)) static int kmsg_release(struct inode * inode, struct file * file)
{
 (void) do_syslog(0,((void*)0),0);
 return 0;
}
