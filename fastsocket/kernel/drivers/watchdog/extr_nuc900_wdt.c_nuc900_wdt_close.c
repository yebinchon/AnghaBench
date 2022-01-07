
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int expect_close; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int clear_bit (int ,int *) ;
 int dev_crit (int *,char*) ;
 TYPE_2__* nuc900_wdt ;
 int nuc900_wdt_ping () ;
 int nuc900_wdt_stop () ;
 int nuc900wdt_busy ;

__attribute__((used)) static int nuc900_wdt_close(struct inode *inode, struct file *file)
{
 if (nuc900_wdt->expect_close == 42)
  nuc900_wdt_stop();
 else {
  dev_crit(&nuc900_wdt->pdev->dev,
   "Unexpected close, not stopping watchdog!\n");
  nuc900_wdt_ping();
 }

 nuc900_wdt->expect_close = 0;
 clear_bit(0, &nuc900wdt_busy);
 return 0;
}
