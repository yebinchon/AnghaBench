
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_accelerator {int pad; int id; int key; int flags; } ;
typedef int rc_uint_type ;
struct TYPE_3__ {int flags; int key; int id; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_accelerator ;
typedef int bindata ;


 int ACC_LAST ;
 scalar_t__ BIN_ACCELERATOR_SIZE ;
 int set_windres_bfd_content (int *,struct bin_accelerator*,int ,scalar_t__) ;
 int windres_put_16 (int *,int ,int) ;

__attribute__((used)) static rc_uint_type
res_to_bin_accelerator (windres_bfd *wrbfd, rc_uint_type off,
   const rc_accelerator *accelerators)
{
  bindata *first, **pp;
  const rc_accelerator *a;

  first = ((void*)0);
  pp = &first;

  for (a = accelerators; a != ((void*)0); a = a->next)
    {
      if (wrbfd)
 {
   struct bin_accelerator ba;

   windres_put_16 (wrbfd, ba.flags, a->flags | (a->next != ((void*)0) ? 0 : ACC_LAST));
   windres_put_16 (wrbfd, ba.key, a->key);
   windres_put_16 (wrbfd, ba.id, a->id);
   windres_put_16 (wrbfd, ba.pad, 0);
   set_windres_bfd_content (wrbfd, &ba, off, BIN_ACCELERATOR_SIZE);
    }
      off += BIN_ACCELERATOR_SIZE;
    }
  return off;
}
