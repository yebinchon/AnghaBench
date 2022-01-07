
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int pnx833x_wdt_ping () ;

__attribute__((used)) static ssize_t pnx833x_wdt_write(struct file *file, const char *data, size_t len, loff_t *ppos)
{

 if (len)
  pnx833x_wdt_ping();

 return len;
}
