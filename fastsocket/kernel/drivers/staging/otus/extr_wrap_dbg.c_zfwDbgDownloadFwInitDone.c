
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int printk (char*) ;

void zfwDbgDownloadFwInitDone(zdev_t* dev)
{
    printk("Download FW Init Done\n");
}
