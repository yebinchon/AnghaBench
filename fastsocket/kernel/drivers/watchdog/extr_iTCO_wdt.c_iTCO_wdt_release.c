
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_release ;
 int iTCO_wdt_keepalive () ;
 int iTCO_wdt_stop () ;
 int is_active ;
 int pr_crit (char*) ;

__attribute__((used)) static int iTCO_wdt_release(struct inode *inode, struct file *file)
{



 if (expect_release == 42) {
  iTCO_wdt_stop();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  iTCO_wdt_keepalive();
 }
 clear_bit(0, &is_active);
 expect_release = 0;
 return 0;
}
