
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_DKTX_STATUS ;
 int ZM_OID_DKTX_STATUS ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfiDbgQueryHwTxBusy(zdev_t* dev)
{
    u32_t cmd[1];
    u16_t ret;


 cmd[0] = 0 | (ZM_CMD_DKTX_STATUS << 8);

    ret = zfIssueCmd(dev, cmd, 4, ZM_OID_DKTX_STATUS, 0);
    return ret;
}
