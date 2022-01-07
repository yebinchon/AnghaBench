
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_MEM_WREEPROM ;
 int ZM_EEPROM_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfiDbgBlockWriteEeprom_v2(zdev_t* dev, u32_t addr, u32_t* buf, u32_t wrlen)
{
    u32_t cmd[16];
    u16_t ret,i;



    cmd[0] = (wrlen+4) | (ZM_CMD_MEM_WREEPROM << 8);
    cmd[1] = addr;

    for (i=0; i<(wrlen/4); i++)
    {
        cmd[2+i] = *(buf+i);
    }

    ret = zfIssueCmd(dev, cmd, (u16_t)(wrlen+8), ZM_EEPROM_WRITE, 0);

    return ret;
}
