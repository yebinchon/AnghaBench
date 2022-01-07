
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_CONFIG ;
 int ZM_OID_INTERNAL_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

void zfHpConfigFM(zdev_t* dev, u32_t RxMaxSize, u32_t DontRetransmit)
{
    u32_t cmd[3];
    u16_t ret;

    cmd[0] = 8 | (ZM_CMD_CONFIG << 8);
    cmd[1] = RxMaxSize;
    cmd[2] = DontRetransmit;

    ret = zfIssueCmd(dev, cmd, 12, ZM_OID_INTERNAL_WRITE, 0);
}
