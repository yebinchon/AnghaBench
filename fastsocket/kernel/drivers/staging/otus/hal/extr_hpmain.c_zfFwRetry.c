
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_INTERNAL_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int *) ;

u16_t zfFwRetry(zdev_t* dev, u8_t enable)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t ret = 0;

    cmd[0] = 4 | (0x92 << 8);
    cmd[1] = (enable == 1) ? 0x01 : 0x00;

    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_INTERNAL_WRITE, ((void*)0));
    return ret;
}
