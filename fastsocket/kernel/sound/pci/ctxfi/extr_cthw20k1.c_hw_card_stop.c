
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {scalar_t__ irq; } ;


 int PLLCTL ;
 int TRNCTL ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int synchronize_irq (scalar_t__) ;

__attribute__((used)) static int hw_card_stop(struct hw *hw)
{
 unsigned int data;


 hw_write_20kx(hw, TRNCTL, 0x00);


 data = hw_read_20kx(hw, PLLCTL);
 hw_write_20kx(hw, PLLCTL, (data & (~(0x0F<<12))));


 if (hw->irq >= 0)
  synchronize_irq(hw->irq);
 return 0;
}
