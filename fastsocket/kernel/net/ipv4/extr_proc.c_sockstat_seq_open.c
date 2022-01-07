
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int single_open_net (struct inode*,struct file*,int ) ;
 int sockstat_seq_show ;

__attribute__((used)) static int sockstat_seq_open(struct inode *inode, struct file *file)
{
 return single_open_net(inode, file, sockstat_seq_show);
}
