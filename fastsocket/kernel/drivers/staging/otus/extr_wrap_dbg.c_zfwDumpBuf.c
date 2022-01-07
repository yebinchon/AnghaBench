
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int printk (char*,...) ;

void zfwDumpBuf(zdev_t* dev, zbuf_t* buf)
{
    u16_t i;

    for (i=0; i<buf->len; i++)
    {
        printk("%02x ", *(((u8_t*)buf->data)+i));
        if ((i&0xf)==0xf)
        {
            printk("\n");
        }
    }
    printk("\n");
}
