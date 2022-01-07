
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int expect_close; scalar_t__ next_heartbeat; } ;


 size_t EFAULT ;
 int HZ ;
 TYPE_1__ at91wdt_private ;
 scalar_t__ get_user (char,char const*) ;
 int heartbeat ;
 scalar_t__ jiffies ;
 int nowayout ;

__attribute__((used)) static ssize_t at91_wdt_write(struct file *file, const char *data, size_t len,
        loff_t *ppos)
{
 if (!len)
  return 0;


 if (!nowayout) {
  size_t i;

  at91wdt_private.expect_close = 0;

  for (i = 0; i < len; i++) {
   char c;
   if (get_user(c, data + i))
    return -EFAULT;
   if (c == 'V') {
    at91wdt_private.expect_close = 42;
    break;
   }
  }
 }

 at91wdt_private.next_heartbeat = jiffies + heartbeat * HZ;

 return len;
}
