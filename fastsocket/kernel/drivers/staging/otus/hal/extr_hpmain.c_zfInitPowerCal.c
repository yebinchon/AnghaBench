
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zm_write_phy_reg (int,int) ;

void zfInitPowerCal(zdev_t* dev)
{



    reg_write((79*4)+0x9800, 0x7f);
    reg_write((77*4)+0x9800, 0x3f3f3f3f);
    reg_write((78*4)+0x9800, 0x3f3f3f3f);
    reg_write((653*4)+0x9800, 0x3f3f3f3f);
    reg_write((654*4)+0x9800, 0x3f3f3f3f);
    reg_write((739*4)+0x9800, 0x3f3f3f3f);
    reg_write((740*4)+0x9800, 0x3f3f3f3f);
    reg_write((755*4)+0x9800, 0x3f3f3f3f);
    reg_write((756*4)+0x9800, 0x3f3f3f3f);
    reg_write((757*4)+0x9800, 0x3f3f3f3f);


}
