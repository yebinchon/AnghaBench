
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct c67x00_device {TYPE_1__* pdev; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int hpi_read_word (struct c67x00_device*,int) ;
 int hpi_write_word (struct c67x00_device*,int,int) ;
 int hpi_write_words_le16 (struct c67x00_device*,int,int *,int) ;

void c67x00_ll_write_mem_le16(struct c67x00_device *dev, u16 addr,
         void *data, int len)
{
 u8 *buf = data;


 if (addr + len > 0xffff) {
  dev_err(&dev->pdev->dev,
   "Trying to write beyond writable region!\n");
  return;
 }

 if (addr & 0x01) {

  u16 tmp;
  tmp = hpi_read_word(dev, addr - 1);
  tmp = (tmp & 0x00ff) | (*buf++ << 8);
  hpi_write_word(dev, addr - 1, tmp);
  addr++;
  len--;
 }

 hpi_write_words_le16(dev, addr, (__le16 *)buf, len / 2);
 buf += len & ~0x01;
 addr += len & ~0x01;
 len &= 0x01;

 if (len) {
  u16 tmp;
  tmp = hpi_read_word(dev, addr);
  tmp = (tmp & 0xff00) | *buf;
  hpi_write_word(dev, addr, tmp);
 }
}
