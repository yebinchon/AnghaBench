
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ds2482_data {scalar_t__ read_prt; int client; } ;


 int DS2482_CMD_SET_READ_PTR ;
 scalar_t__ i2c_smbus_write_byte_data (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int ds2482_select_register(struct ds2482_data *pdev, u8 read_ptr)
{
 if (pdev->read_prt != read_ptr) {
  if (i2c_smbus_write_byte_data(pdev->client,
           DS2482_CMD_SET_READ_PTR,
           read_ptr) < 0)
   return -1;

  pdev->read_prt = read_ptr;
 }
 return 0;
}
