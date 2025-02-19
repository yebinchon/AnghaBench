
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_3__ {int type; struct TYPE_3__* next; struct TYPE_3__* popup; scalar_t__ id; int * text; scalar_t__ help; scalar_t__ state; } ;
typedef TYPE_1__ rc_menuitem ;
typedef int bfd_byte ;


 int MENUITEM_ENDMENU ;
 int MENUITEM_POPUP ;
 int _ (char*) ;
 int * get_unicode (int *,int const*,int,int*) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 scalar_t__ windres_get_16 (int *,int const*,int) ;

__attribute__((used)) static rc_menuitem *
bin_to_res_menuitems (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
        rc_uint_type *read)
{
  rc_menuitem *first, **pp;

  first = ((void*)0);
  pp = &first;

  *read = 0;

  while (length > 0)
    {
      rc_uint_type flags, slen, itemlen;
      rc_uint_type stroff;
      rc_menuitem *mi;

      if (length < 4)
 toosmall (_("menuitem header"));

      mi = (rc_menuitem *) res_alloc (sizeof *mi);
      mi->state = 0;
      mi->help = 0;

      flags = windres_get_16 (wrbfd, data, 2);
      mi->type = flags &~ (MENUITEM_POPUP | MENUITEM_ENDMENU);

      if ((flags & MENUITEM_POPUP) == 0)
 stroff = 4;
      else
 stroff = 2;

      if (length < stroff + 2)
 toosmall (_("menuitem header"));

      if (windres_get_16 (wrbfd, data + stroff, 2) == 0)
 {
   slen = 0;
   mi->text = ((void*)0);
 }
      else
 mi->text = get_unicode (wrbfd, data + stroff, length - stroff, &slen);

      itemlen = stroff + slen * 2 + 2;

      if ((flags & MENUITEM_POPUP) == 0)
 {
   mi->popup = ((void*)0);
   mi->id = windres_get_16 (wrbfd, data + 2, 2);
 }
      else
 {
   rc_uint_type subread;

   mi->id = 0;
   mi->popup = bin_to_res_menuitems (wrbfd, data + itemlen, length - itemlen,
           &subread);
   itemlen += subread;
 }

      mi->next = ((void*)0);
      *pp = mi;
      pp = &mi->next;

      data += itemlen;
      length -= itemlen;
      *read += itemlen;

      if ((flags & MENUITEM_ENDMENU) != 0)
 return first;
    }

  return first;
}
