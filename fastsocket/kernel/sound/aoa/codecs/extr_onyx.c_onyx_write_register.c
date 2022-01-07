
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct onyx {size_t* cache; int i2c; } ;


 size_t FIRSTREGISTER ;
 int i2c_smbus_write_byte_data (int ,size_t,size_t) ;

__attribute__((used)) static int onyx_write_register(struct onyx *onyx, u8 reg, u8 value)
{
 int result;

 result = i2c_smbus_write_byte_data(onyx->i2c, reg, value);
 if (!result)
  onyx->cache[reg-FIRSTREGISTER] = value;
 return result;
}
