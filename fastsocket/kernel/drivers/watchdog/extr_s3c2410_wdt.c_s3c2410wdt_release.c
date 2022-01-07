
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int expect_close ;
 int open_lock ;
 int s3c2410wdt_keepalive () ;
 int s3c2410wdt_stop () ;
 int wdt_dev ;

__attribute__((used)) static int s3c2410wdt_release(struct inode *inode, struct file *file)
{





 if (expect_close == 42)
  s3c2410wdt_stop();
 else {
  dev_err(wdt_dev, "Unexpected close, not stopping watchdog\n");
  s3c2410wdt_keepalive();
 }
 expect_close = 0;
 clear_bit(0, &open_lock);
 return 0;
}
