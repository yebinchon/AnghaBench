
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int timer; scalar_t__ next_heartbeat; int open; } ;


 int EBUSY ;
 int HZ ;
 scalar_t__ WDT_TIMEOUT ;
 TYPE_1__ at91wdt_private ;
 int heartbeat ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int at91_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &at91wdt_private.open))
  return -EBUSY;

 at91wdt_private.next_heartbeat = jiffies + heartbeat * HZ;
 mod_timer(&at91wdt_private.timer, jiffies + WDT_TIMEOUT);

 return nonseekable_open(inode, file);
}
