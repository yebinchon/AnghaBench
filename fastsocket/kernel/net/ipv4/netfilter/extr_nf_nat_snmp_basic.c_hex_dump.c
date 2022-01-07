
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void hex_dump(const unsigned char *buf, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  if (i && !(i % 16))
   printk("\n");
  printk("%02x ", *(buf + i));
 }
 printk("\n");
}
