
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ds2482_data {int read_prt; int client; } ;


 scalar_t__ DS2482_CMD_WRITE_CONFIG ;
 int DS2482_PTR_CODE_CONFIG ;
 int DS2482_PTR_CODE_STATUS ;
 scalar_t__ i2c_smbus_write_byte_data (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int ds2482_send_cmd_data(struct ds2482_data *pdev,
           u8 cmd, u8 byte)
{
 if (i2c_smbus_write_byte_data(pdev->client, cmd, byte) < 0)
  return -1;


 pdev->read_prt = (cmd != DS2482_CMD_WRITE_CONFIG) ?
    DS2482_PTR_CODE_STATUS : DS2482_PTR_CODE_CONFIG;
 return 0;
}
