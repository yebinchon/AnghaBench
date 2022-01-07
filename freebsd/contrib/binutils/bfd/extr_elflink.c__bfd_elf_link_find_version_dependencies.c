
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* verdef; } ;
struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int dynindx; TYPE_5__ verinfo; scalar_t__ def_regular; int def_dynamic; TYPE_3__ root; } ;
struct elf_find_verdep_info {int vers; int output_bfd; int failed; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_16__ {TYPE_6__* verref; } ;
struct TYPE_15__ {scalar_t__ vna_nodename; scalar_t__ vna_other; struct TYPE_15__* vna_nextptr; int vna_flags; } ;
struct TYPE_14__ {scalar_t__ vn_bfd; TYPE_7__* vn_auxptr; struct TYPE_14__* vn_nextref; } ;
struct TYPE_12__ {scalar_t__ vd_bfd; scalar_t__ vd_nodename; int vd_exp_refno; int vd_flags; } ;
typedef TYPE_6__ Elf_Internal_Verneed ;
typedef TYPE_7__ Elf_Internal_Vernaux ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;
 void* bfd_zalloc (int ,int) ;
 TYPE_8__* elf_tdata (int ) ;

bfd_boolean
_bfd_elf_link_find_version_dependencies (struct elf_link_hash_entry *h,
      void *data)
{
  struct elf_find_verdep_info *rinfo = data;
  Elf_Internal_Verneed *t;
  Elf_Internal_Vernaux *a;
  bfd_size_type amt;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;



  if (!h->def_dynamic
      || h->def_regular
      || h->dynindx == -1
      || h->verinfo.verdef == ((void*)0))
    return TRUE;


  for (t = elf_tdata (rinfo->output_bfd)->verref; t != ((void*)0); t = t->vn_nextref)
    {
      if (t->vn_bfd != h->verinfo.verdef->vd_bfd)
 continue;

      for (a = t->vn_auxptr; a != ((void*)0); a = a->vna_nextptr)
 if (a->vna_nodename == h->verinfo.verdef->vd_nodename)
   return TRUE;

      break;
    }



  if (t == ((void*)0))
    {
      amt = sizeof *t;
      t = bfd_zalloc (rinfo->output_bfd, amt);
      if (t == ((void*)0))
 {
   rinfo->failed = TRUE;
   return FALSE;
 }

      t->vn_bfd = h->verinfo.verdef->vd_bfd;
      t->vn_nextref = elf_tdata (rinfo->output_bfd)->verref;
      elf_tdata (rinfo->output_bfd)->verref = t;
    }

  amt = sizeof *a;
  a = bfd_zalloc (rinfo->output_bfd, amt);





  a->vna_nodename = h->verinfo.verdef->vd_nodename;

  a->vna_flags = h->verinfo.verdef->vd_flags;
  a->vna_nextptr = t->vn_auxptr;

  h->verinfo.verdef->vd_exp_refno = rinfo->vers;
  ++rinfo->vers;

  a->vna_other = h->verinfo.verdef->vd_exp_refno + 1;

  t->vn_auxptr = a;

  return TRUE;
}
