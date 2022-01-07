
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_12__ ;


struct elf_strtab_hash {int dummy; } ;
struct TYPE_24__ {void* st_name; } ;
struct elf_link_local_dynamic_entry {TYPE_3__ isym; struct elf_link_local_dynamic_entry* next; } ;
struct elf_link_hash_table {struct elf_link_local_dynamic_entry* dynlocal; int * dynobj; struct elf_strtab_hash* dynstr; } ;
struct elf_backend_data {TYPE_2__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_25__ {int size; int * contents; } ;
typedef TYPE_4__ asection ;
struct TYPE_22__ {void* d_val; } ;
struct TYPE_30__ {int d_tag; TYPE_1__ d_un; } ;
struct TYPE_29__ {void* vda_name; } ;
struct TYPE_28__ {int vd_aux; scalar_t__ vd_cnt; scalar_t__ vd_next; } ;
struct TYPE_27__ {void* vna_name; } ;
struct TYPE_26__ {scalar_t__ vn_cnt; void* vn_file; scalar_t__ vn_next; } ;
struct TYPE_23__ {int (* swap_dyn_out ) (int *,TYPE_9__*,int *) ;int (* swap_dyn_in ) (int *,int *,TYPE_9__*) ;int sizeof_dyn; } ;
struct TYPE_21__ {scalar_t__ verref; scalar_t__ cverdefs; } ;
typedef TYPE_5__ Elf_Internal_Verneed ;
typedef TYPE_6__ Elf_Internal_Vernaux ;
typedef TYPE_7__ Elf_Internal_Verdef ;
typedef TYPE_8__ Elf_Internal_Verdaux ;
typedef TYPE_9__ Elf_Internal_Dyn ;
typedef int Elf_External_Verneed ;
typedef int Elf_External_Vernaux ;
typedef int Elf_External_Verdef ;
typedef int Elf_External_Verdaux ;


 int BFD_ASSERT (int ) ;







 int TRUE ;
 int _bfd_elf_strtab_finalize (struct elf_strtab_hash*) ;
 void* _bfd_elf_strtab_offset (struct elf_strtab_hash*,void*) ;
 scalar_t__ _bfd_elf_strtab_size (struct elf_strtab_hash*) ;
 int _bfd_elf_swap_verdaux_in (int *,int *,TYPE_8__*) ;
 int _bfd_elf_swap_verdaux_out (int *,TYPE_8__*,int *) ;
 int _bfd_elf_swap_verdef_in (int *,int *,TYPE_7__*) ;
 int _bfd_elf_swap_vernaux_in (int *,int *,TYPE_6__*) ;
 int _bfd_elf_swap_vernaux_out (int *,TYPE_6__*,int *) ;
 int _bfd_elf_swap_verneed_in (int *,int *,TYPE_5__*) ;
 int _bfd_elf_swap_verneed_out (int *,TYPE_5__*,int *) ;
 TYPE_4__* bfd_get_section_by_name (int *,char*) ;
 int elf_adjust_dynstr_offsets ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 int elf_link_hash_traverse (struct elf_link_hash_table*,int ,struct elf_strtab_hash*) ;
 TYPE_12__* elf_tdata (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,int *,TYPE_9__*) ;
 int stub2 (int *,TYPE_9__*,int *) ;

__attribute__((used)) static bfd_boolean
elf_finalize_dynstr (bfd *output_bfd, struct bfd_link_info *info)
{
  struct elf_link_hash_table *hash_table = elf_hash_table (info);
  struct elf_link_local_dynamic_entry *entry;
  struct elf_strtab_hash *dynstr = hash_table->dynstr;
  bfd *dynobj = hash_table->dynobj;
  asection *sdyn;
  bfd_size_type size;
  const struct elf_backend_data *bed;
  bfd_byte *extdyn;

  _bfd_elf_strtab_finalize (dynstr);
  size = _bfd_elf_strtab_size (dynstr);

  bed = get_elf_backend_data (dynobj);
  sdyn = bfd_get_section_by_name (dynobj, ".dynamic");
  BFD_ASSERT (sdyn != ((void*)0));


  for (extdyn = sdyn->contents;
       extdyn < sdyn->contents + sdyn->size;
       extdyn += bed->s->sizeof_dyn)
    {
      Elf_Internal_Dyn dyn;

      bed->s->swap_dyn_in (dynobj, extdyn, &dyn);
      switch (dyn.d_tag)
 {
 case 128:
   dyn.d_un.d_val = size;
   break;
 case 132:
 case 129:
 case 131:
 case 130:
 case 133:
 case 134:
   dyn.d_un.d_val = _bfd_elf_strtab_offset (dynstr, dyn.d_un.d_val);
   break;
 default:
   continue;
 }
      bed->s->swap_dyn_out (dynobj, &dyn, extdyn);
    }


  for (entry = hash_table->dynlocal; entry ; entry = entry->next)
    entry->isym.st_name = _bfd_elf_strtab_offset (dynstr,
        entry->isym.st_name);


  elf_link_hash_traverse (hash_table, elf_adjust_dynstr_offsets, dynstr);


  if (elf_tdata (output_bfd)->cverdefs)
    {
      asection *s;
      bfd_byte *p;
      bfd_size_type i;
      Elf_Internal_Verdef def;
      Elf_Internal_Verdaux defaux;

      s = bfd_get_section_by_name (dynobj, ".gnu.version_d");
      p = s->contents;
      do
 {
   _bfd_elf_swap_verdef_in (output_bfd, (Elf_External_Verdef *) p,
       &def);
   p += sizeof (Elf_External_Verdef);
   if (def.vd_aux != sizeof (Elf_External_Verdef))
     continue;
   for (i = 0; i < def.vd_cnt; ++i)
     {
       _bfd_elf_swap_verdaux_in (output_bfd,
     (Elf_External_Verdaux *) p, &defaux);
       defaux.vda_name = _bfd_elf_strtab_offset (dynstr,
       defaux.vda_name);
       _bfd_elf_swap_verdaux_out (output_bfd,
      &defaux, (Elf_External_Verdaux *) p);
       p += sizeof (Elf_External_Verdaux);
     }
 }
      while (def.vd_next);
    }


  if (elf_tdata (output_bfd)->verref)
    {
      asection *s;
      bfd_byte *p;
      bfd_size_type i;
      Elf_Internal_Verneed need;
      Elf_Internal_Vernaux needaux;

      s = bfd_get_section_by_name (dynobj, ".gnu.version_r");
      p = s->contents;
      do
 {
   _bfd_elf_swap_verneed_in (output_bfd, (Elf_External_Verneed *) p,
        &need);
   need.vn_file = _bfd_elf_strtab_offset (dynstr, need.vn_file);
   _bfd_elf_swap_verneed_out (output_bfd, &need,
         (Elf_External_Verneed *) p);
   p += sizeof (Elf_External_Verneed);
   for (i = 0; i < need.vn_cnt; ++i)
     {
       _bfd_elf_swap_vernaux_in (output_bfd,
     (Elf_External_Vernaux *) p, &needaux);
       needaux.vna_name = _bfd_elf_strtab_offset (dynstr,
        needaux.vna_name);
       _bfd_elf_swap_vernaux_out (output_bfd,
      &needaux,
      (Elf_External_Vernaux *) p);
       p += sizeof (Elf_External_Vernaux);
     }
 }
      while (need.vn_next);
    }

  return TRUE;
}
