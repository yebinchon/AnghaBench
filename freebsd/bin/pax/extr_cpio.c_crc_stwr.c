
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_start () ;
 int docrc ;

int
crc_stwr(void)
{
 docrc = 1;
 return(dev_start());
}
