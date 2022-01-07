
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int hw_read_pci (struct hw*,int) ;
 int hw_write_pci (struct hw*,int,int) ;

__attribute__((used)) static void i2c_lock(struct hw *hw)
{
 if ((hw_read_pci(hw, 0xcc) & 0xff) == 0xaa)
  hw_write_pci(hw, 0xcc, 0x00);
}
