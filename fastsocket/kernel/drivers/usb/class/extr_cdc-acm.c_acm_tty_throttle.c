
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int throttle; int throttle_lock; } ;


 int ACM_READY (struct acm*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void acm_tty_throttle(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;
 if (!ACM_READY(acm))
  return;
 spin_lock_bh(&acm->throttle_lock);
 acm->throttle = 1;
 spin_unlock_bh(&acm->throttle_lock);
}
