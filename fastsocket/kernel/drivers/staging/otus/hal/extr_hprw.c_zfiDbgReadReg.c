
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_OID_READ ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfiDbgReadReg(zdev_t* dev, u32_t addr)
{
    u32_t cmd[2];
    u16_t ret;

    cmd[0] = 0x00000004;
    cmd[1] = addr;

    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_READ, 0);
    return ret;
}
