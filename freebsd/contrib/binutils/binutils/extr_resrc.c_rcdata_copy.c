
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int unichar ;
typedef int rc_uint_type ;
struct TYPE_9__ {int length; int data; } ;
struct TYPE_8__ {int length; int w; } ;
struct TYPE_7__ {int length; int s; } ;
struct TYPE_10__ {TYPE_3__ buffer; TYPE_2__ wstring; TYPE_1__ string; int dword; int word; } ;
struct TYPE_11__ {int type; TYPE_4__ u; } ;
typedef TYPE_5__ rc_rcdata_item ;
typedef int bfd_byte ;







 int abort () ;
 int memcpy (int *,int ,int) ;
 int windres_put_16 (int *,int *,int) ;
 int windres_put_32 (int *,int *,int) ;
 int wrtarget ;

__attribute__((used)) static rc_uint_type
rcdata_copy (const rc_rcdata_item *src, bfd_byte *dst)
{
  if (! src)
    return 0;
  switch (src->type)
 {
    case 129:
      if (dst)
 windres_put_16 (&wrtarget, dst, (rc_uint_type) src->u.word);
      return 2;
    case 131:
      if (dst)
 windres_put_32 (&wrtarget, dst, (rc_uint_type) src->u.dword);
      return 4;
    case 130:
      if (dst && src->u.string.length)
 memcpy (dst, src->u.string.s, src->u.string.length);
      return (rc_uint_type) src->u.string.length;
    case 128:
      if (dst && src->u.wstring.length)
 memcpy (dst, src->u.wstring.w, src->u.wstring.length * sizeof (unichar));
      return (rc_uint_type) (src->u.wstring.length * sizeof (unichar));
    case 132:
      if (dst && src->u.buffer.length)
 memcpy (dst, src->u.buffer.data, src->u.buffer.length);
      return (rc_uint_type) src->u.buffer.length;
    default:
      abort ();
    }

  return 0;
}
