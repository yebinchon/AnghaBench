
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int BT_DBG (char*,struct tty_struct*,char) ;

__attribute__((used)) static void rfcomm_tty_send_xchar(struct tty_struct *tty, char ch)
{
 BT_DBG("tty %p ch %c", tty, ch);
}
