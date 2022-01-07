
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_OID_SYNTH ;
 int zfIssueCmd (int *,int*,int,int,int ) ;

u32_t zfiDbgSetIFSynthesizer(zdev_t* dev, u32_t value)
{
    u32_t cmd[2];
    u16_t ret;


    cmd[0] = 0x4 | (ZM_OID_SYNTH << 8);
    cmd[1] = value;

    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_SYNTH, 0);
    return ret;
}
