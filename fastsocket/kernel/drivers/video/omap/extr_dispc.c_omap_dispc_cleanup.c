
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int region_cnt; } ;
struct TYPE_4__ {int base; int fbdev; TYPE_1__ mem_desc; } ;


 int INT_24XX_DSS_IRQ ;
 int OMAPFB_UPDATE_DISABLED ;
 int cleanup_fbmem () ;
 TYPE_2__ dispc ;
 int free_irq (int ,int ) ;
 int free_palette_ram () ;
 int iounmap (int ) ;
 int omap_dispc_enable_plane (int,int ) ;
 int omap_dispc_set_update_mode (int ) ;
 int put_dss_clocks () ;

__attribute__((used)) static void omap_dispc_cleanup(void)
{
 int i;

 omap_dispc_set_update_mode(OMAPFB_UPDATE_DISABLED);

 for (i = 0; i < dispc.mem_desc.region_cnt; i++)
  omap_dispc_enable_plane(i, 0);
 cleanup_fbmem();
 free_palette_ram();
 free_irq(INT_24XX_DSS_IRQ, dispc.fbdev);
 put_dss_clocks();
 iounmap(dispc.base);
}
