
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int printk (char*,...) ;

void print_buffer(u32 *buffer, int len)
{
 int i;
 u8 *buf =(u8*)buffer;

 printk("ASCII BUFFER DUMP (len: %x):\n",len);

 for(i=0;i<len;i++)
  printk("%c",buf[i]);

 printk("\nBINARY BUFFER DUMP (len: %x):\n",len);

 for(i=0;i<len;i++)
  printk("%x",buf[i]);

 printk("\n");
}
