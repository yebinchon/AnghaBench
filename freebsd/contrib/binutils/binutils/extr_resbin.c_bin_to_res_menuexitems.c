
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* popup; void* help; int * text; void* id; void* state; void* type; } ;
typedef TYPE_1__ rc_menuitem ;
typedef int bfd_byte ;


 int _ (char*) ;
 int * get_unicode (int *,int const*,int,int*) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 scalar_t__ windres_get_16 (int *,int const*,int) ;
 void* windres_get_32 (int *,int const*,int) ;

__attribute__((used)) static rc_menuitem *
bin_to_res_menuexitems (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
   rc_uint_type *read)
{
  rc_menuitem *first, **pp;

  first = ((void*)0);
  pp = &first;

  *read = 0;

  while (length > 0)
    {
      rc_uint_type flags, slen;
      rc_uint_type itemlen;
      rc_menuitem *mi;

      if (length < 16)
 toosmall (_("menuitem header"));

      mi = (rc_menuitem *) res_alloc (sizeof (rc_menuitem));
      mi->type = windres_get_32 (wrbfd, data, 4);
      mi->state = windres_get_32 (wrbfd, data + 4, 4);
      mi->id = windres_get_32 (wrbfd, data + 8, 4);

      flags = windres_get_16 (wrbfd, data + 12, 2);

      if (windres_get_16 (wrbfd, data + 14, 2) == 0)
 {
   slen = 0;
   mi->text = ((void*)0);
 }
      else
 mi->text = get_unicode (wrbfd, data + 14, length - 14, &slen);

      itemlen = 14 + slen * 2 + 2;
      itemlen = (itemlen + 3) &~ 3;

      if ((flags & 1) == 0)
 {
   mi->popup = ((void*)0);
   mi->help = 0;
 }
      else
 {
   rc_uint_type subread;

   if (length < itemlen + 4)
     toosmall (_("menuitem"));
   mi->help = windres_get_32 (wrbfd, data + itemlen, 4);
   itemlen += 4;

   mi->popup = bin_to_res_menuexitems (wrbfd, data + itemlen,
           length - itemlen, &subread);
   itemlen += subread;
 }

      mi->next = ((void*)0);
      *pp = mi;
      pp = &mi->next;

      data += itemlen;
      length -= itemlen;
      *read += itemlen;

      if ((flags & 0x80) != 0)
 return first;
    }

  return first;
}
