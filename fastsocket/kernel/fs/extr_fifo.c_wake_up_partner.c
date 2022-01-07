
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_pipe; } ;
struct TYPE_2__ {int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wake_up_partner(struct inode* inode)
{
 wake_up_interruptible(&inode->i_pipe->wait);
}
