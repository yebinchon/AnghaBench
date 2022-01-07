
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9320 {int (* write ) (struct ili9320*,unsigned int,unsigned int) ;int dev; } ;


 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int stub1 (struct ili9320*,unsigned int,unsigned int) ;

int ili9320_write(struct ili9320 *ili, unsigned int reg, unsigned int value)
{
 dev_dbg(ili->dev, "write: reg=%02x, val=%04x\n", reg, value);
 return ili->write(ili, reg, value);
}
