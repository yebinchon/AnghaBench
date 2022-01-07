
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int i2c_master_send (int ,char*,int) ;
 int isp1301_i2c_client ;

__attribute__((used)) static void i2c_write(u8 buf, u8 subaddr)
{
 char tmpbuf[2];

 tmpbuf[0] = subaddr;
 tmpbuf[1] = buf;
 i2c_master_send(isp1301_i2c_client, &tmpbuf[0], 2);
}
