
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct rfcomm_dev {struct tty_struct* tty; } ;


 int BT_DBG (char*,struct rfcomm_dev*,struct tty_struct*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void rfcomm_tty_wakeup(unsigned long arg)
{
 struct rfcomm_dev *dev = (void *) arg;
 struct tty_struct *tty = dev->tty;
 if (!tty)
  return;

 BT_DBG("dev %p tty %p", dev, tty);
 tty_wakeup(tty);
}
