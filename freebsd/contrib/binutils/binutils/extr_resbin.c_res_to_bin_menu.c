
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_menuex {int help; int sig2; int sig1; } ;
struct bin_menu {int help; int sig2; int sig1; } ;
typedef int rc_uint_type ;
struct TYPE_4__ {int items; int help; } ;
typedef TYPE_1__ rc_menu ;


 scalar_t__ BIN_MENUEX_SIZE ;
 scalar_t__ BIN_MENU_SIZE ;
 int extended_menu (TYPE_1__ const*) ;
 int res_to_bin_menuexitems (int *,int ,int ) ;
 int res_to_bin_menuitems (int *,int ,int ) ;
 int set_windres_bfd_content (int *,struct bin_menuex*,int ,scalar_t__) ;
 int windres_put_16 (int *,int ,int) ;
 int windres_put_32 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_menu (windres_bfd *wrbfd, rc_uint_type off, const rc_menu *menu)
{
  int menuex;

  menuex = extended_menu (menu);

  if (wrbfd)
    {
  if (! menuex)
    {
   struct bin_menu bm;
   windres_put_16 (wrbfd, bm.sig1, 0);
   windres_put_16 (wrbfd, bm.sig2, 0);
   set_windres_bfd_content (wrbfd, &bm, off, BIN_MENU_SIZE);
    }
  else
    {
   struct bin_menuex bm;
   windres_put_16 (wrbfd, bm.sig1, 1);
   windres_put_16 (wrbfd, bm.sig2, 4);
   windres_put_32 (wrbfd, bm.help, menu->help);
   set_windres_bfd_content (wrbfd, &bm, off, BIN_MENUEX_SIZE);
    }
    }
  off += (menuex != 0 ? BIN_MENUEX_SIZE : BIN_MENU_SIZE);
  if (! menuex)
    {
      off = res_to_bin_menuitems (wrbfd, off, menu->items);
    }
  else
    {
      off = res_to_bin_menuexitems (wrbfd, off, menu->items);
    }
  return off;
}
