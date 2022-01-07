
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EFAULT ;
 int WDT_OK_TO_CLOSE ;
 int clear_bit (int ,int *) ;
 scalar_t__ get_user (char,char const*) ;
 int nowayout ;
 int set_bit (int ,int *) ;
 int wdt_enable () ;
 int wdt_status ;

__attribute__((used)) static ssize_t iop_wdt_write(struct file *file, const char *data, size_t len,
    loff_t *ppos)
{
 if (len) {
  if (!nowayout) {
   size_t i;

   clear_bit(WDT_OK_TO_CLOSE, &wdt_status);

   for (i = 0; i != len; i++) {
    char c;

    if (get_user(c, data + i))
     return -EFAULT;
    if (c == 'V')
     set_bit(WDT_OK_TO_CLOSE, &wdt_status);
   }
  }
  wdt_enable();
 }
 return len;
}
