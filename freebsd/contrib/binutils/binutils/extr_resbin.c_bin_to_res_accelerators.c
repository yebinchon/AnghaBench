
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* acc; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
struct TYPE_7__ {int flags; struct TYPE_7__* next; void* id; void* key; } ;
typedef TYPE_3__ rc_accelerator ;
typedef int bfd_byte ;


 int ACC_LAST ;
 int RES_TYPE_ACCELERATOR ;
 int _ (char*) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 void* windres_get_16 (int *,int const*,int) ;

__attribute__((used)) static rc_res_resource *
bin_to_res_accelerators (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_accelerator *first, **pp;
  rc_res_resource *r;

  first = ((void*)0);
  pp = &first;

  while (1)
    {
      rc_accelerator *a;

      if (length < 8)
 toosmall (_("accelerator"));

      a = (rc_accelerator *) res_alloc (sizeof (rc_accelerator));

      a->flags = windres_get_16 (wrbfd, data, 2);
      a->key = windres_get_16 (wrbfd, data + 2, 2);
      a->id = windres_get_16 (wrbfd, data + 4, 2);

      a->next = ((void*)0);
      *pp = a;
      pp = &a->next;

      if ((a->flags & ACC_LAST) != 0)
 break;

      data += 8;
      length -= 8;
    }

  r = (rc_res_resource *) res_alloc (sizeof (rc_res_resource));
  r->type = RES_TYPE_ACCELERATOR;
  r->u.acc = first;

  return r;
}
