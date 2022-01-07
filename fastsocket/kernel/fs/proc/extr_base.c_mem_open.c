
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_2__ {scalar_t__ self_exec_id; } ;


 TYPE_1__* current ;

__attribute__((used)) static int mem_open(struct inode* inode, struct file* file)
{
 file->private_data = (void*)((long)current->self_exec_id);
 return 0;
}
