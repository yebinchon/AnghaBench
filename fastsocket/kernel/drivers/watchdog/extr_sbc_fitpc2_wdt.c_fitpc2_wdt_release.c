
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int WDT_IN_USE ;
 int WDT_OK_TO_CLOSE ;
 int clear_bit (int ,int *) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_disable () ;
 int wdt_enable () ;
 int wdt_status ;

__attribute__((used)) static int fitpc2_wdt_release(struct inode *inode, struct file *file)
{
 if (test_bit(WDT_OK_TO_CLOSE, &wdt_status)) {
  wdt_disable();
  pr_info("Device disabled\n");
 } else {
  pr_warn("Device closed unexpectedly - timer will not stop\n");
  wdt_enable();
 }

 clear_bit(WDT_IN_USE, &wdt_status);
 clear_bit(WDT_OK_TO_CLOSE, &wdt_status);

 return 0;
}
