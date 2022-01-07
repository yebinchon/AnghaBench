
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int mpc8xxx_wdt_pr_warn (char*) ;
 int mpc8xxx_wdt_timer_ping (int ) ;
 int nowayout ;
 int wdt_is_open ;

__attribute__((used)) static int mpc8xxx_wdt_release(struct inode *inode, struct file *file)
{
 if (!nowayout)
  mpc8xxx_wdt_timer_ping(0);
 else
  mpc8xxx_wdt_pr_warn("watchdog closed");
 clear_bit(0, &wdt_is_open);
 return 0;
}
