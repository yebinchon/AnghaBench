
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct file {struct socket* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {unsigned int (* poll ) (struct file*,struct socket*,int *) ;} ;


 unsigned int stub1 (struct file*,struct socket*,int *) ;

unsigned int sock_poll(struct file *file, poll_table *wait)
{
 struct socket *sock;




 sock = file->private_data;
 return sock->ops->poll(file, sock, wait);
}
