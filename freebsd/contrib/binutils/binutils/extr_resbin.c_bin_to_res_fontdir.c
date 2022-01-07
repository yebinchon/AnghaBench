
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_fontdir_item {char const* index; } ;
typedef int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* fontdir; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
struct TYPE_7__ {unsigned int length; char const* data; struct TYPE_7__* next; void* index; } ;
typedef TYPE_3__ rc_fontdir ;
typedef char bfd_byte ;


 int RES_TYPE_FONTDIR ;
 int _ (char*) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 void* windres_get_16 (int *,char const*,int) ;

__attribute__((used)) static rc_res_resource *
bin_to_res_fontdir (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_uint_type c, i;
  rc_fontdir *first, **pp;
  rc_res_resource *r;

  if (length < 2)
    toosmall (_("fontdir header"));

  c = windres_get_16 (wrbfd, data, 2);

  first = ((void*)0);
  pp = &first;

  for (i = 0; i < c; i++)
    {
      const struct bin_fontdir_item *bfi;
      rc_fontdir *fd;
      unsigned int off;

      if (length < 56)
 toosmall (_("fontdir"));

      bfi = (const struct bin_fontdir_item *) data;
      fd = (rc_fontdir *) res_alloc (sizeof *fd);
      fd->index = windres_get_16 (wrbfd, bfi->index, 2);







      off = 56;

      while (off < length && data[off] != '\0')
 ++off;
      if (off >= length)
 toosmall (_("fontdir device name"));
      ++off;

      while (off < length && data[off] != '\0')
 ++off;
      if (off >= length)
 toosmall (_("fontdir face name"));
      ++off;

      fd->length = off;
      fd->data = data;

      fd->next = ((void*)0);
      *pp = fd;
      pp = &fd->next;




      data += off;
      length -= off;
    }

  r = (rc_res_resource *) res_alloc (sizeof *r);
  r->type = RES_TYPE_FONTDIR;
  r->u.fontdir = first;

  return r;
}
