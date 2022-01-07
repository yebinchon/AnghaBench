
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_menuitem {int id; int flags; } ;
typedef int rc_uint_type ;
struct TYPE_3__ {int type; int id; struct TYPE_3__* popup; int text; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_menuitem ;


 scalar_t__ BIN_MENUITEM_POPUP_SIZE ;
 scalar_t__ BIN_MENUITEM_SIZE ;
 int MENUITEM_ENDMENU ;
 int MENUITEM_POPUP ;
 int set_windres_bfd_content (int *,struct bin_menuitem*,int ,scalar_t__) ;
 int unicode_to_bin (int *,int ,int ) ;
 int windres_put_16 (int *,int ,int) ;

__attribute__((used)) static rc_uint_type
res_to_bin_menuitems (windres_bfd *wrbfd, rc_uint_type off, const rc_menuitem *items)
{
  const rc_menuitem *mi;

  for (mi = items; mi != ((void*)0); mi = mi->next)
    {
      struct bin_menuitem bmi;
      int flags;

      flags = mi->type;
      if (mi->next == ((void*)0))
 flags |= MENUITEM_ENDMENU;
      if (mi->popup != ((void*)0))
 flags |= MENUITEM_POPUP;

      if (wrbfd)
 {
   windres_put_16 (wrbfd, bmi.flags, flags);
      if (mi->popup == ((void*)0))
     windres_put_16 (wrbfd, bmi.id, mi->id);
   set_windres_bfd_content (wrbfd, &bmi, off,
       mi->popup == ((void*)0) ? BIN_MENUITEM_SIZE
              : BIN_MENUITEM_POPUP_SIZE);
 }
      off += (mi->popup == ((void*)0) ? BIN_MENUITEM_SIZE : BIN_MENUITEM_POPUP_SIZE);

      off = unicode_to_bin (wrbfd, off, mi->text);

      if (mi->popup != ((void*)0))
 {
   off = res_to_bin_menuitems (wrbfd, off, mi->popup);
 }
    }
  return off;
}
