
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_tty_driver (int ) ;
 int rfcomm_tty_driver ;
 int tty_unregister_driver (int ) ;

void rfcomm_cleanup_ttys(void)
{
 tty_unregister_driver(rfcomm_tty_driver);
 put_tty_driver(rfcomm_tty_driver);
}
