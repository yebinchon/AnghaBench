
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct isp1301 {int client; } ;


 scalar_t__ i2c_smbus_read_byte_data (int ,scalar_t__) ;

__attribute__((used)) static inline u8
isp1301_get_u8(struct isp1301 *isp, u8 reg)
{
 return i2c_smbus_read_byte_data(isp->client, reg + 0);
}
