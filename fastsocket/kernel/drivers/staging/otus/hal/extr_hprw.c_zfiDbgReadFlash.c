
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int ZM_CMD_FLASH_READ ;
 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_FLASH_READ ;
 int zfIssueCmd (int *,int*,int,int ,int *) ;

u32_t zfiDbgReadFlash(zdev_t *dev, u32_t addr, u32_t len)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u32_t ret;

    cmd[0] = len | (ZM_CMD_FLASH_READ << 8);
    cmd[1] = addr;

    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_FLASH_READ, ((void*)0));
    return ret;
}
