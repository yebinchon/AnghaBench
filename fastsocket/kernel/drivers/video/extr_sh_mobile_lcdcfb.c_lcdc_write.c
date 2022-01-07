
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {scalar_t__ base; } ;


 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static void lcdc_write(struct sh_mobile_lcdc_priv *priv,
         unsigned long reg_offs, unsigned long data)
{
 iowrite32(data, priv->base + reg_offs);
}
