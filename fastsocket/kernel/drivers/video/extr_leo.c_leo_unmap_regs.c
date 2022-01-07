
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int * resource; } ;
struct leo_par {scalar_t__ cursor; scalar_t__ lx_krn; scalar_t__ ld_ss1; scalar_t__ ld_ss0; scalar_t__ lc_ss0_usr; } ;
struct leo_cursor {int dummy; } ;
struct fb_info {scalar_t__ screen_base; } ;


 int of_iounmap (int *,scalar_t__,int) ;

__attribute__((used)) static void leo_unmap_regs(struct of_device *op, struct fb_info *info,
      struct leo_par *par)
{
 if (par->lc_ss0_usr)
  of_iounmap(&op->resource[0], par->lc_ss0_usr, 0x1000);
 if (par->ld_ss0)
  of_iounmap(&op->resource[0], par->ld_ss0, 0x1000);
 if (par->ld_ss1)
  of_iounmap(&op->resource[0], par->ld_ss1, 0x1000);
 if (par->lx_krn)
  of_iounmap(&op->resource[0], par->lx_krn, 0x1000);
 if (par->cursor)
  of_iounmap(&op->resource[0],
      par->cursor, sizeof(struct leo_cursor));
 if (info->screen_base)
  of_iounmap(&op->resource[0], info->screen_base, 0x800000);
}
