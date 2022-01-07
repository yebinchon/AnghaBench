
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ expect_close; int timer; int open; } ;


 TYPE_1__ at91wdt_private ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;

__attribute__((used)) static int at91_wdt_close(struct inode *inode, struct file *file)
{
 clear_bit(0, &at91wdt_private.open);


 if (!at91wdt_private.expect_close)
  del_timer(&at91wdt_private.timer);

 at91wdt_private.expect_close = 0;
 return 0;
}
