
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int urb_task; int throttle_lock; scalar_t__ throttle; } ;


 int ACM_READY (struct acm*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void acm_tty_unthrottle(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;
 if (!ACM_READY(acm))
  return;
 spin_lock_bh(&acm->throttle_lock);
 acm->throttle = 0;
 spin_unlock_bh(&acm->throttle_lock);
 tasklet_schedule(&acm->urb_task);
}
