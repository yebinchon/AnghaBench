
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int hw_read_pci (struct hw*,int) ;
 int hw_write_pci (struct hw*,int,int) ;

__attribute__((used)) static int i2c_unlock(struct hw *hw)
{
 if ((hw_read_pci(hw, 0xcc) & 0xff) == 0xaa)
  return 0;

 hw_write_pci(hw, 0xcc, 0x8c);
 hw_write_pci(hw, 0xcc, 0x0e);
 if ((hw_read_pci(hw, 0xcc) & 0xff) == 0xaa)
  return 0;

 hw_write_pci(hw, 0xcc, 0xee);
 hw_write_pci(hw, 0xcc, 0xaa);
 if ((hw_read_pci(hw, 0xcc) & 0xff) == 0xaa)
  return 0;

 return -1;
}
