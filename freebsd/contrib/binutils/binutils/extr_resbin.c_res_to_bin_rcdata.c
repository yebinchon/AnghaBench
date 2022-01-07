
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int unichar ;
typedef int rc_uint_type ;
struct TYPE_9__ {int length; scalar_t__ data; } ;
struct TYPE_8__ {int length; int * w; } ;
struct TYPE_7__ {int length; scalar_t__ s; } ;
struct TYPE_10__ {TYPE_3__ buffer; TYPE_2__ wstring; TYPE_1__ string; int dword; int word; } ;
struct TYPE_11__ {int type; TYPE_4__ u; struct TYPE_11__* next; } ;
typedef TYPE_5__ rc_rcdata_item ;
typedef int bfd_byte ;







 int abort () ;
 scalar_t__ reswr_alloc (int) ;
 int set_windres_bfd_content (int *,int *,int,int) ;
 int windres_put_16 (int *,int *,int ) ;
 int windres_put_32 (int *,int *,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_rcdata (windres_bfd *wrbfd, rc_uint_type off, const rc_rcdata_item *items)
{
  const rc_rcdata_item *ri;

  for (ri = items; ri != ((void*)0); ri = ri->next)
    {
      rc_uint_type len;
      switch (ri->type)
 {
 default:
   abort ();
 case 129:
   len = 2;
   break;
 case 131:
   len = 4;
   break;
 case 130:
   len = ri->u.string.length;
   break;
 case 128:
   len = ri->u.wstring.length * sizeof (unichar);
   break;
 case 132:
   len = ri->u.buffer.length;
   break;
 }
      if (wrbfd)
 {
   bfd_byte h[4];
   bfd_byte *hp = &h[0];
   switch (ri->type)
     {
     case 129:
       windres_put_16 (wrbfd, hp, ri->u.word);
       break;
     case 131:
       windres_put_32 (wrbfd, hp, ri->u.dword);
       break;
     case 130:
       hp = (bfd_byte *) ri->u.string.s;
   break;
 case 128:
   {
  rc_uint_type i;

  hp = (bfd_byte *) reswr_alloc (len);
     for (i = 0; i < ri->u.wstring.length; i++)
    windres_put_16 (wrbfd, hp + i * sizeof (unichar), ri->u.wstring.w[i]);
   }
       break;
 case 132:
       hp = (bfd_byte *) ri->u.buffer.data;
   break;
 }
   set_windres_bfd_content (wrbfd, hp, off, len);
    }
      off += len;
    }
  return off;
}
