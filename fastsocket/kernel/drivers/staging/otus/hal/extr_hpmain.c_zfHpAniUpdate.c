
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_ANI_READ ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfHpAniUpdate(zdev_t* dev)
{
    u32_t cmd[5];
    u16_t ret;

    cmd[0] = 0x00000010;
    cmd[1] = 0x1c36e8;
    cmd[2] = 0x1c36ec;
    cmd[3] = 0x1c3cb4;
    cmd[4] = 0x1c3cb8;

    ret = zfIssueCmd(dev, cmd, 20, ZM_ANI_READ, 0);
    return ret;
}
