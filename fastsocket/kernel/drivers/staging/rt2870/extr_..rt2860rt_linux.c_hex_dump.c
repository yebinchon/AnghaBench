
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RTDebugLevel ;
 scalar_t__ RT_DEBUG_TRACE ;
 int printk (char*,...) ;

void hex_dump(char *str, unsigned char *pSrcBufVA, unsigned int SrcBufLen)
{
 unsigned char *pt;
 int x;

 if (RTDebugLevel < RT_DEBUG_TRACE)
  return;

 pt = pSrcBufVA;
 printk("%s: %p, len = %d\n",str, pSrcBufVA, SrcBufLen);
 for (x=0; x<SrcBufLen; x++)
 {
  if (x % 16 == 0)
   printk("0x%04x : ", x);
  printk("%02x ", ((unsigned char)pt[x]));
  if (x%16 == 15) printk("\n");
 }
 printk("\n");
}
