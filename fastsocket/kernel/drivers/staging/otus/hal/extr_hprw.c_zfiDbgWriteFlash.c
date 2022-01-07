
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_WFLASH ;
 int ZM_OID_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfiDbgWriteFlash(zdev_t* dev, u32_t addr, u32_t val)
{
    u32_t cmd[3];
    u16_t ret;



    cmd[0] = 8 | (ZM_CMD_WFLASH << 8);
    cmd[1] = addr;
    cmd[2] = val;

    ret = zfIssueCmd(dev, cmd, 12, ZM_OID_WRITE, 0);
    return ret;
}
