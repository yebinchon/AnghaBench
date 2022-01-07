
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct isp1301 {int client; } ;


 int i2c_smbus_write_byte_data (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
isp1301_clear_bits(struct isp1301 *isp, u8 reg, u8 bits)
{
 return i2c_smbus_write_byte_data(isp->client, reg + 1, bits);
}
