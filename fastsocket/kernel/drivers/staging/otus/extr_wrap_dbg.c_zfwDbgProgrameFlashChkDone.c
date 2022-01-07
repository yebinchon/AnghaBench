
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int printk (char*) ;

void zfwDbgProgrameFlashChkDone(zdev_t* dev)
{
    printk("Program Flash Done\n");
}
