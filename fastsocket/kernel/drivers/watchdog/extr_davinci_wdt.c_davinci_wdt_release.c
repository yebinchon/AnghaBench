
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int WDT_IN_USE ;
 int clear_bit (int ,int *) ;
 int wdt_service () ;
 int wdt_status ;

__attribute__((used)) static int davinci_wdt_release(struct inode *inode, struct file *file)
{
 wdt_service();
 clear_bit(WDT_IN_USE, &wdt_status);

 return 0;
}
