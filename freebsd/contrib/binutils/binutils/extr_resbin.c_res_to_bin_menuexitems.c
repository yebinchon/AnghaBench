
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_menuitemex {int flags; struct bin_menuitemex* id; struct bin_menuitemex* state; struct bin_menuitemex* type; } ;
typedef int rc_uint_type ;
struct TYPE_3__ {struct TYPE_3__* popup; int help; int text; int id; int state; int type; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_menuitem ;
typedef struct bin_menuitemex bfd_byte ;


 int BIN_MENUITEMEX_SIZE ;
 int set_windres_bfd_content (int *,struct bin_menuitemex*,int,int) ;
 int unicode_to_bin (int *,int,int ) ;
 int windres_put_16 (int *,int ,int) ;
 int windres_put_32 (int *,struct bin_menuitemex*,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_menuexitems (windres_bfd *wrbfd, rc_uint_type off, const rc_menuitem *items)
{
  rc_uint_type off_delta = off;
  const rc_menuitem *mi;

  for (mi = items; mi != ((void*)0); mi = mi->next)
    {
      struct bin_menuitemex bmi;
      int flags;

      off += (4 - ((off - off_delta) & 3)) & 3;

      flags = 0;
      if (mi->next == ((void*)0))
 flags |= 0x80;
      if (mi->popup != ((void*)0))
 flags |= 1;

      if (wrbfd)
 {
   windres_put_32 (wrbfd, bmi.type, mi->type);
   windres_put_32 (wrbfd, bmi.state, mi->state);
   windres_put_32 (wrbfd, bmi.id, mi->id);
   windres_put_16 (wrbfd, bmi.flags, flags);
   set_windres_bfd_content (wrbfd, &bmi, off, BIN_MENUITEMEX_SIZE);
 }
      off += BIN_MENUITEMEX_SIZE;

      off = unicode_to_bin (wrbfd, off, mi->text);

      if (mi->popup != ((void*)0))
 {
   bfd_byte help[4];

   off += (4 - ((off - off_delta) & 3)) & 3;

   if (wrbfd)
     {
       windres_put_32 (wrbfd, help, mi->help);
       set_windres_bfd_content (wrbfd, help, off, 4);
     }
   off += 4;
   off = res_to_bin_menuexitems (wrbfd, off, mi->popup);
 }
    }
  return off;
}
