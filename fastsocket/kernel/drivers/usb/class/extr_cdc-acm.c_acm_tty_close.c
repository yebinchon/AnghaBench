
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct file {int dummy; } ;
struct acm {int port; int dev; } ;


 int acm_port_down (struct acm*,int ) ;
 int acm_tty_unregister (struct acm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_mutex ;
 int tty_port_close_end (int *,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (int *,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (int *,int *) ;

__attribute__((used)) static void acm_tty_close(struct tty_struct *tty, struct file *filp)
{
 struct acm *acm = tty->driver_data;



 if (!acm)
  return;
 if (tty_port_close_start(&acm->port, tty, filp) == 0) {
  mutex_lock(&open_mutex);
  if (!acm->dev) {
   tty_port_tty_set(&acm->port, ((void*)0));
   acm_tty_unregister(acm);
   tty->driver_data = ((void*)0);
  }
  mutex_unlock(&open_mutex);
  return;
 }
 acm_port_down(acm, 0);
 tty_port_close_end(&acm->port, tty);
 tty_port_tty_set(&acm->port, ((void*)0));
}
