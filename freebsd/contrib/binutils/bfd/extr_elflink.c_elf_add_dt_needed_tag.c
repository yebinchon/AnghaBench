
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf_link_hash_table {int dynstr; int dynobj; } ;
struct elf_backend_data {TYPE_1__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_9__ {int size; int * contents; } ;
typedef TYPE_3__ asection ;
struct TYPE_8__ {scalar_t__ d_val; } ;
struct TYPE_10__ {scalar_t__ d_tag; TYPE_2__ d_un; } ;
struct TYPE_7__ {int (* swap_dyn_in ) (int ,int *,TYPE_4__*) ;int sizeof_dyn; } ;
typedef TYPE_4__ Elf_Internal_Dyn ;


 scalar_t__ DT_NEEDED ;
 int FALSE ;
 int _bfd_elf_add_dynamic_entry (struct bfd_link_info*,scalar_t__,scalar_t__) ;
 int _bfd_elf_link_create_dynamic_sections (int ,struct bfd_link_info*) ;
 int _bfd_elf_link_create_dynstrtab (int *,struct bfd_link_info*) ;
 scalar_t__ _bfd_elf_strtab_add (int ,char const*,int ) ;
 int _bfd_elf_strtab_delref (int ,scalar_t__) ;
 scalar_t__ _bfd_elf_strtab_size (int ) ;
 TYPE_3__* bfd_get_section_by_name (int ,char*) ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int stub1 (int ,int *,TYPE_4__*) ;

__attribute__((used)) static int
elf_add_dt_needed_tag (bfd *abfd,
         struct bfd_link_info *info,
         const char *soname,
         bfd_boolean do_it)
{
  struct elf_link_hash_table *hash_table;
  bfd_size_type oldsize;
  bfd_size_type strindex;

  if (!_bfd_elf_link_create_dynstrtab (abfd, info))
    return -1;

  hash_table = elf_hash_table (info);
  oldsize = _bfd_elf_strtab_size (hash_table->dynstr);
  strindex = _bfd_elf_strtab_add (hash_table->dynstr, soname, FALSE);
  if (strindex == (bfd_size_type) -1)
    return -1;

  if (oldsize == _bfd_elf_strtab_size (hash_table->dynstr))
    {
      asection *sdyn;
      const struct elf_backend_data *bed;
      bfd_byte *extdyn;

      bed = get_elf_backend_data (hash_table->dynobj);
      sdyn = bfd_get_section_by_name (hash_table->dynobj, ".dynamic");
      if (sdyn != ((void*)0))
 for (extdyn = sdyn->contents;
      extdyn < sdyn->contents + sdyn->size;
      extdyn += bed->s->sizeof_dyn)
   {
     Elf_Internal_Dyn dyn;

     bed->s->swap_dyn_in (hash_table->dynobj, extdyn, &dyn);
     if (dyn.d_tag == DT_NEEDED
  && dyn.d_un.d_val == strindex)
       {
  _bfd_elf_strtab_delref (hash_table->dynstr, strindex);
  return 1;
       }
   }
    }

  if (do_it)
    {
      if (!_bfd_elf_link_create_dynamic_sections (hash_table->dynobj, info))
 return -1;

      if (!_bfd_elf_add_dynamic_entry (info, DT_NEEDED, strindex))
 return -1;
    }
  else

    _bfd_elf_strtab_delref (hash_table->dynstr, strindex);

  return 0;
}
