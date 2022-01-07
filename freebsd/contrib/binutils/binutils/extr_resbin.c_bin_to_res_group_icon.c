
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* group_icon; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
struct TYPE_7__ {struct TYPE_7__* next; void* index; int bytes; void* bits; void* planes; void* colors; void* height; void* width; } ;
typedef TYPE_3__ rc_group_icon ;
typedef int bfd_byte ;


 int RES_TYPE_GROUP_ICON ;
 int _ (char*) ;
 int fatal (int ,int) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 void* windres_get_16 (int *,int const*,int) ;
 int windres_get_32 (int *,int const*,int) ;
 void* windres_get_8 (int *,int const*,int) ;

__attribute__((used)) static rc_res_resource *
bin_to_res_group_icon (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  int type, c, i;
  rc_group_icon *first, **pp;
  rc_res_resource *r;

  if (length < 6)
    toosmall (_("group icon header"));

  type = windres_get_16 (wrbfd, data + 2, 2);
  if (type != 1)
    fatal (_("unexpected group icon type %d"), type);

  c = windres_get_16 (wrbfd, data + 4, 2);

  data += 6;
  length -= 6;

  first = ((void*)0);
  pp = &first;

  for (i = 0; i < c; i++)
    {
      rc_group_icon *gi;

      if (length < 14)
 toosmall (_("group icon"));

      gi = (rc_group_icon *) res_alloc (sizeof (rc_group_icon));

      gi->width = windres_get_8 (wrbfd, data, 1);
      gi->height = windres_get_8 (wrbfd, data + 1, 1);
      gi->colors = windres_get_8 (wrbfd, data + 2, 1);
      gi->planes = windres_get_16 (wrbfd, data + 4, 2);
      gi->bits = windres_get_16 (wrbfd, data + 6, 2);
      gi->bytes = windres_get_32 (wrbfd, data + 8, 4);
      gi->index = windres_get_16 (wrbfd, data + 12, 2);

      gi->next = ((void*)0);
      *pp = gi;
      pp = &gi->next;

      data += 14;
      length -= 14;
    }

  r = (rc_res_resource *) res_alloc (sizeof *r);
  r->type = RES_TYPE_GROUP_ICON;
  r->u.group_icon = first;

  return r;
}
