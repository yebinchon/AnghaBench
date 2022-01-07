
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;


 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_INTERNAL_WRITE ;
 scalar_t__ zfIssueCmd (int *,int*,int,int ,int *) ;

u16_t zfHpRemoveKey(zdev_t* dev, u16_t user)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t ret = 0;

    cmd[0] = 0x00002904;
    cmd[1] = (u32_t)user;

    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_INTERNAL_WRITE, ((void*)0));
    return ret;
}
