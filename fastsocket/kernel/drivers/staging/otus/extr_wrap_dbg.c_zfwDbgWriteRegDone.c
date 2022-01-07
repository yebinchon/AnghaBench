
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int printk (char*,int ,int ) ;

void zfwDbgWriteRegDone(zdev_t* dev, u32_t addr, u32_t val)
{
    printk("Write addr:%x = %x\n", addr, val);
}
