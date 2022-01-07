
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int WC ;
 unsigned int hw_read_20kx (struct hw*,int ) ;

__attribute__((used)) static unsigned int get_wc(struct hw *hw)
{
 return hw_read_20kx(hw, WC);
}
