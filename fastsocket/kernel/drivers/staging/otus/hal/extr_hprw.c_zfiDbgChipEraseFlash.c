
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_FLASH_ERASE ;
 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_INTERNAL_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int *) ;

u16_t zfiDbgChipEraseFlash(zdev_t *dev)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t ret;

    cmd[0] = 0x00000000 | (ZM_CMD_FLASH_ERASE << 8);

    ret = zfIssueCmd(dev, cmd, 4, ZM_OID_INTERNAL_WRITE, ((void*)0));
    return ret;
}
