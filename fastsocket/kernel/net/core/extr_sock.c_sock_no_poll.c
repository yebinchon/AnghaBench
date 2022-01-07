
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;



unsigned int sock_no_poll(struct file *file, struct socket *sock, poll_table *pt)
{
 return 0;
}
