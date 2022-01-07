
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_poll {int wait; int table; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {unsigned long (* poll ) (struct file*,int *) ;} ;


 unsigned long stub1 (struct file*,int *) ;
 int vhost_poll_wakeup (int *,int ,int ,void*) ;

void vhost_poll_start(struct vhost_poll *poll, struct file *file)
{
 unsigned long mask;
 mask = file->f_op->poll(file, &poll->table);
 if (mask)
  vhost_poll_wakeup(&poll->wait, 0, 0, (void *)mask);
}
