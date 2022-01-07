
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EFAULT ;
 scalar_t__ get_user (char,char const*) ;
 int nowayout ;
 int sh_wdt_keepalive () ;
 int shwdt_expect_close ;

__attribute__((used)) static ssize_t sh_wdt_write(struct file *file, const char *buf,
       size_t count, loff_t *ppos)
{
 if (count) {
  if (!nowayout) {
   size_t i;

   shwdt_expect_close = 0;

   for (i = 0; i != count; i++) {
    char c;
    if (get_user(c, buf + i))
     return -EFAULT;
    if (c == 'V')
     shwdt_expect_close = 42;
   }
  }
  sh_wdt_keepalive();
 }

 return count;
}
