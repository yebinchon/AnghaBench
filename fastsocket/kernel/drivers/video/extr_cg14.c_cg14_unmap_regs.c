
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int * resource; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ screen_base; } ;
struct cg14_regs {int dummy; } ;
struct cg14_par {scalar_t__ cursor; scalar_t__ clut; scalar_t__ regs; } ;
struct cg14_cursor {int dummy; } ;
struct cg14_clut {int dummy; } ;


 int of_iounmap (int *,scalar_t__,int) ;

__attribute__((used)) static void cg14_unmap_regs(struct of_device *op, struct fb_info *info,
       struct cg14_par *par)
{
 if (par->regs)
  of_iounmap(&op->resource[0],
      par->regs, sizeof(struct cg14_regs));
 if (par->clut)
  of_iounmap(&op->resource[0],
      par->clut, sizeof(struct cg14_clut));
 if (par->cursor)
  of_iounmap(&op->resource[0],
      par->cursor, sizeof(struct cg14_cursor));
 if (info->screen_base)
  of_iounmap(&op->resource[1],
      info->screen_base, info->fix.smem_len);
}
