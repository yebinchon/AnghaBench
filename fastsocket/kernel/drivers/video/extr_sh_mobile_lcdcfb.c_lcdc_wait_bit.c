
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int dummy; } ;


 int cpu_relax () ;
 unsigned long lcdc_read (struct sh_mobile_lcdc_priv*,unsigned long) ;

__attribute__((used)) static void lcdc_wait_bit(struct sh_mobile_lcdc_priv *priv,
     unsigned long reg_offs,
     unsigned long mask, unsigned long until)
{
 while ((lcdc_read(priv, reg_offs) & mask) != until)
  cpu_relax();
}
