
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_9__ {scalar_t__ length; scalar_t__ data; } ;
struct TYPE_8__ {int length; int w; } ;
struct TYPE_7__ {int length; int s; } ;
struct TYPE_10__ {int word; TYPE_3__ buffer; TYPE_2__ wstring; TYPE_1__ string; scalar_t__ dword; } ;
struct TYPE_11__ {int type; struct TYPE_11__* next; TYPE_4__ u; } ;
typedef TYPE_5__ rc_rcdata_item ;
typedef int bfd_byte ;
typedef int FILE ;







 int abort () ;
 int ascii_print (int *,int ,int ) ;
 int fprintf (int *,char*,...) ;
 int indent (int *,int) ;
 int unicode_print (int *,int ,int ) ;
 int write_rc_datablock (int *,int ,int const*,int ,int ,int) ;

__attribute__((used)) static void
write_rc_rcdata (FILE *e, const rc_rcdata_item *rcdata, int ind)
{
  const rc_rcdata_item *ri;

  indent (e, ind);
  fprintf (e, "BEGIN\n");

  for (ri = rcdata; ri != ((void*)0); ri = ri->next)
    {
      if (ri->type == 132 && ri->u.buffer.length == 0)
 continue;

      switch (ri->type)
 {
 default:
   abort ();

 case 129:
   indent (e, ind + 2);
   fprintf (e, "%ld", (long) (ri->u.word & 0xffff));
   break;

 case 131:
   indent (e, ind + 2);
   fprintf (e, "%luL", (unsigned long) ri->u.dword);
   break;

 case 130:
   indent (e, ind + 2);
   fprintf (e, "\"");
   ascii_print (e, ri->u.string.s, ri->u.string.length);
   fprintf (e, "\"");
   break;

 case 128:
   indent (e, ind + 2);
   fprintf (e, "L\"");
   unicode_print (e, ri->u.wstring.w, ri->u.wstring.length);
   fprintf (e, "\"");
   break;

 case 132:
   write_rc_datablock (e, (rc_uint_type) ri->u.buffer.length,
           (const bfd_byte *) ri->u.buffer.data,
             ri->next != ((void*)0), 0, -1);
     break;
 }

      if (ri->type != 132)
 {
   if (ri->next != ((void*)0))
     fprintf (e, ",");
   fprintf (e, "\n");
 }
    }

  indent (e, ind);
  fprintf (e, "END\n");
}
