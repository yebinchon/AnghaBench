
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int ZM_CMD_FW_DL_INIT ;
 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_FW_DL_INIT ;
 int zfIssueCmd (int *,int*,int,int ,int *) ;

u32_t zfiDownloadFwSet(zdev_t *dev)
{


    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u32_t ret;

    cmd[0] = 0x00000008 | (ZM_CMD_FW_DL_INIT << 8);

    ret = zfIssueCmd(dev, cmd, 12, ZM_OID_FW_DL_INIT, ((void*)0));

    return ret;
}
