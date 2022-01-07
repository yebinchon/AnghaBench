
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int single_open (struct file*,int ,int ) ;
 int snmp6_dev_seq_show ;

__attribute__((used)) static int snmp6_dev_seq_open(struct inode *inode, struct file *file)
{
 return single_open(file, snmp6_dev_seq_show, PDE(inode)->data);
}
