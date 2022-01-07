
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2482_data {int read_prt; int client; } ;


 int DS2482_PTR_CODE_STATUS ;
 scalar_t__ i2c_smbus_write_byte (int ,int ) ;

__attribute__((used)) static inline int ds2482_send_cmd(struct ds2482_data *pdev, u8 cmd)
{
 if (i2c_smbus_write_byte(pdev->client, cmd) < 0)
  return -1;

 pdev->read_prt = DS2482_PTR_CODE_STATUS;
 return 0;
}
