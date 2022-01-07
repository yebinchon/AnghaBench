
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_CMD_WREEPROM ;
 int ZM_EEPROM_WRITE ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;

u32_t zfiDbgBlockWriteEeprom(zdev_t* dev, u32_t addr, u32_t* buf)
{
    u32_t cmd[9];
    u16_t ret,i;





    cmd[0] = 32 | (ZM_CMD_WREEPROM << 8);

    for (i=0; i<4; i++)
    {
        cmd[(2*i)+1] = addr+(4*i);
        cmd[(2*i)+2] = *(buf+i);
    }

    ret = zfIssueCmd(dev, cmd, 36, ZM_EEPROM_WRITE, 0);




    return ret;
}
