
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct extern_res_data {int size; int reserved; int codepage; int rva; } ;
struct TYPE_13__ {int length; TYPE_4__* last; TYPE_4__* d; } ;
struct TYPE_11__ {int length; } ;
struct coff_write_info {int dirsize; int dirstrsize; int reloc_count; int dataentsize; int wrbfd; TYPE_2__ resources; TYPE_10__ dataents; TYPE_5__** relocs; int sympp; } ;
typedef int rc_uint_type ;
struct TYPE_12__ {int codepage; int reserved; } ;
struct TYPE_14__ {TYPE_1__ coff_info; } ;
typedef TYPE_3__ rc_res_resource ;
struct TYPE_15__ {int length; struct TYPE_15__* next; TYPE_3__ const* res; } ;
typedef TYPE_4__ coff_res_data ;
struct TYPE_16__ {int address; int * howto; scalar_t__ addend; int sym_ptr_ptr; } ;
typedef TYPE_5__ arelent ;


 int BFD_RELOC_RVA ;
 int WR_BFD (int ) ;
 int _ (char*) ;
 int bfd_fatal (int ) ;
 int * bfd_reloc_type_lookup (int ,int ) ;
 scalar_t__ coff_alloc (TYPE_10__*,int) ;
 int res_to_bin (int *,int ,TYPE_3__ const*) ;
 scalar_t__ reswr_alloc (int) ;
 int windres_put_32 (int ,int ,int) ;
 TYPE_5__** xrealloc (TYPE_5__**,int) ;

__attribute__((used)) static void
coff_res_to_bin (const rc_res_resource *res, struct coff_write_info *cwi)
{
  arelent *r;
  struct extern_res_data *erd;
  coff_res_data *d;
  r = (arelent *) reswr_alloc (sizeof (arelent));
  r->sym_ptr_ptr = cwi->sympp;
  r->address = cwi->dirsize + cwi->dirstrsize + cwi->dataents.length;
  r->addend = 0;
  r->howto = bfd_reloc_type_lookup (WR_BFD (cwi->wrbfd), BFD_RELOC_RVA);
  if (r->howto == ((void*)0))
    bfd_fatal (_("can't get BFD_RELOC_RVA relocation type"));

  cwi->relocs = xrealloc (cwi->relocs,
     (cwi->reloc_count + 2) * sizeof (arelent *));
  cwi->relocs[cwi->reloc_count] = r;
  cwi->relocs[cwi->reloc_count + 1] = ((void*)0);
  ++cwi->reloc_count;

  erd = (struct extern_res_data *) coff_alloc (&cwi->dataents, sizeof (*erd));

  windres_put_32 (cwi->wrbfd, erd->rva,
      (cwi->dirsize
       + cwi->dirstrsize
       + cwi->dataentsize
       + cwi->resources.length));
  windres_put_32 (cwi->wrbfd, erd->codepage, res->coff_info.codepage);
  windres_put_32 (cwi->wrbfd, erd->reserved, res->coff_info.reserved);

  d = (coff_res_data *) reswr_alloc (sizeof (coff_res_data));
  d->length = res_to_bin (((void*)0), (rc_uint_type) 0, res);
  d->res = res;
  d->next = ((void*)0);

  if (cwi->resources.d == ((void*)0))
    cwi->resources.d = d;
  else
    cwi->resources.last->next = d;

  cwi->resources.last = d;
  cwi->resources.length += (d->length + 3) & ~3;

  windres_put_32 (cwi->wrbfd, erd->size, d->length);


  d->length = (d->length + 3) & ~3;
}
