
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int index; } ;
struct azx {int dummy; } ;


 int INTCTL ;
 int azx_readl (struct azx*,int ) ;
 int azx_stream_clear (struct azx*,struct azx_dev*) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void azx_stream_stop(struct azx *chip, struct azx_dev *azx_dev)
{
 azx_stream_clear(chip, azx_dev);

 azx_writel(chip, INTCTL,
     azx_readl(chip, INTCTL) & ~(1 << azx_dev->index));
}
