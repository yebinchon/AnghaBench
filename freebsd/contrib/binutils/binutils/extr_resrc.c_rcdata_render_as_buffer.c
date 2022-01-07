
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rc_uint_type ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ rc_rcdata_item ;
typedef int bfd_byte ;


 scalar_t__ rcdata_copy (TYPE_1__ const*,int *) ;
 scalar_t__ res_alloc (scalar_t__) ;

__attribute__((used)) static bfd_byte *
rcdata_render_as_buffer (const rc_rcdata_item *data, rc_uint_type *plen)
{
  const rc_rcdata_item *d;
  bfd_byte *ret = ((void*)0), *pret;
  rc_uint_type len = 0;

  for (d = data; d != ((void*)0); d = d->next)
    len += rcdata_copy (d, ((void*)0));
  if (len != 0)
    {
      ret = pret = (bfd_byte *) res_alloc (len);
      for (d = data; d != ((void*)0); d = d->next)
 pret += rcdata_copy (d, pret);
    }
  if (plen)
    *plen = len;
  return ret;
}
