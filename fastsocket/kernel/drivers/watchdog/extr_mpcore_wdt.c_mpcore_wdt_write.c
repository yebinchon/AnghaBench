
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {int expect_close; } ;
struct file {struct mpcore_wdt* private_data; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EFAULT ;
 scalar_t__ get_user (char,char const*) ;
 int mpcore_wdt_keepalive (struct mpcore_wdt*) ;
 int nowayout ;

__attribute__((used)) static ssize_t mpcore_wdt_write(struct file *file, const char *data,
      size_t len, loff_t *ppos)
{
 struct mpcore_wdt *wdt = file->private_data;




 if (len) {
  if (!nowayout) {
   size_t i;


   wdt->expect_close = 0;

   for (i = 0; i != len; i++) {
    char c;

    if (get_user(c, data + i))
     return -EFAULT;
    if (c == 'V')
     wdt->expect_close = 42;
   }
  }
  mpcore_wdt_keepalive(wdt);
 }
 return len;
}
