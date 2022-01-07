
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hw {int dummy; } ;


 int I2C_IF_WLOCK ;
 scalar_t__ STATE_UNLOCKED ;
 scalar_t__ hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;

__attribute__((used)) static int hw20k2_i2c_unlock_full_access(struct hw *hw)
{
 u8 UnlockKeySequence_FLASH_FULLACCESS_MODE[2] = {0xB3, 0xD4};


 hw_write_20kx(hw, I2C_IF_WLOCK,
   UnlockKeySequence_FLASH_FULLACCESS_MODE[0]);
 hw_write_20kx(hw, I2C_IF_WLOCK,
   UnlockKeySequence_FLASH_FULLACCESS_MODE[1]);

 if (hw_read_20kx(hw, I2C_IF_WLOCK) == STATE_UNLOCKED)
  return 0;

 return -1;
}
