
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EINVAL ;
 int dac_reg ;
 int dac_val ;
 int depth ;
 int outb_p (unsigned int,int ) ;
 scalar_t__ pmi_setpal ;
 scalar_t__ vga_compat ;

__attribute__((used)) static int vesa_setpalette(int regno, unsigned red, unsigned green,
       unsigned blue)
{
 int shift = 16 - depth;
 int err = -EINVAL;




 if (vga_compat) {
  outb_p(regno, dac_reg);
  outb_p(red >> shift, dac_val);
  outb_p(green >> shift, dac_val);
  outb_p(blue >> shift, dac_val);
  err = 0;
 }
 return err;
}
