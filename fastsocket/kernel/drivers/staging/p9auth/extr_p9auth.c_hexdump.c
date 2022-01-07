
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void hexdump(unsigned char *buf, unsigned int len)
{
 while (len--)
  printk("%02x", *buf++);
 printk("\n");
}
