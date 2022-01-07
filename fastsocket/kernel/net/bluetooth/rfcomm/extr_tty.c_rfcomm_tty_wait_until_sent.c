
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int BT_DBG (char*,struct tty_struct*,int) ;

__attribute__((used)) static void rfcomm_tty_wait_until_sent(struct tty_struct *tty, int timeout)
{
 BT_DBG("tty %p timeout %d", tty, timeout);
}
