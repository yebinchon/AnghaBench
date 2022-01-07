
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_poll {int wait; int wqh; } ;


 int remove_wait_queue (int ,int *) ;

void vhost_poll_stop(struct vhost_poll *poll)
{
 remove_wait_queue(poll->wqh, &poll->wait);
}
