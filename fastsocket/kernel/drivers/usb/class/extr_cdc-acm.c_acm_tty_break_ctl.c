
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int dummy; } ;


 int ACM_READY (struct acm*) ;
 int EINVAL ;
 int acm_send_break (struct acm*,int) ;
 int dbg (char*) ;

__attribute__((used)) static int acm_tty_break_ctl(struct tty_struct *tty, int state)
{
 struct acm *acm = tty->driver_data;
 int retval;
 if (!ACM_READY(acm))
  return -EINVAL;
 retval = acm_send_break(acm, state ? 0xffff : 0);
 if (retval < 0)
  dbg("send break failed");
 return retval;
}
