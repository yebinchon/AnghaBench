
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {int users; TYPE_1__ miscdev; } ;


 int at32_wdt_pat () ;
 int at32_wdt_stop () ;
 int clear_bit (int,int *) ;
 int dev_dbg (int ,char*) ;
 int expect_release ;
 TYPE_2__* wdt ;

__attribute__((used)) static int at32_wdt_close(struct inode *inode, struct file *file)
{
 if (expect_release == 42) {
  at32_wdt_stop();
 } else {
  dev_dbg(wdt->miscdev.parent,
   "unexpected close, not stopping watchdog!\n");
  at32_wdt_pat();
 }
 clear_bit(1, &wdt->users);
 expect_release = 0;
 return 0;
}
