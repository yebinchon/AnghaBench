
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct mips_got_info {int local_gotno; int global_gotno; int tls_gotno; int tls_assigned_gotno; int got_entries; TYPE_1__* global_gotsym; } ;
struct mips_elf_link_hash_table {int function_stub_size; scalar_t__ is_vxworks; int mips16_stubs_seen; } ;
struct mips_elf_count_tls_arg {scalar_t__ needed; struct bfd_link_info* info; } ;
struct bfd_link_info {TYPE_2__* input_bfds; scalar_t__ relocatable; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_18__ {TYPE_3__* sections; struct TYPE_18__* link_next; } ;
typedef TYPE_2__ bfd ;
struct TYPE_19__ {int flags; int size; struct TYPE_19__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_20__ {int dynsymcount; TYPE_2__* dynobj; } ;
struct TYPE_17__ {int dynindx; } ;
typedef int Elf32_External_RegInfo ;


 int FALSE ;
 scalar_t__ MIPS_ELF_GOT_MAX_SIZE (struct bfd_link_info*) ;
 int MIPS_ELF_GOT_SIZE (TYPE_2__*) ;
 int MIPS_FUNCTION_STUB_BIG_SIZE ;
 int MIPS_FUNCTION_STUB_NORMAL_SIZE ;
 int SEC_ALLOC ;
 int TRUE ;
 TYPE_3__* bfd_get_section_by_name (TYPE_2__*,char*) ;
 int bfd_set_section_size (TYPE_2__*,TYPE_3__*,int) ;
 int count_section_dynsyms (TYPE_2__*,struct bfd_link_info*) ;
 TYPE_8__* elf_hash_table (struct bfd_link_info*) ;
 int elf_link_hash_traverse (TYPE_8__*,int ,struct mips_elf_count_tls_arg*) ;
 int htab_traverse (int ,int ,struct mips_got_info*) ;
 int mips_elf_check_mips16_stubs ;
 int mips_elf_count_global_tls_entries ;
 struct mips_got_info* mips_elf_got_info (TYPE_2__*,TYPE_3__**) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 int mips_elf_initialize_tls_index ;
 int mips_elf_link_hash_traverse (struct mips_elf_link_hash_table*,int ,int *) ;
 int mips_elf_multi_got (TYPE_2__*,struct bfd_link_info*,struct mips_got_info*,TYPE_3__*,int) ;
 int mips_elf_resolve_final_got_entries (struct mips_got_info*) ;
 int mips_elf_sort_hash_table (struct bfd_link_info*,int) ;

bfd_boolean
_bfd_mips_elf_always_size_sections (bfd *output_bfd,
        struct bfd_link_info *info)
{
  asection *ri;

  bfd *dynobj;
  asection *s;
  struct mips_got_info *g;
  int i;
  bfd_size_type loadable_size = 0;
  bfd_size_type local_gotno;
  bfd_size_type dynsymcount;
  bfd *sub;
  struct mips_elf_count_tls_arg count_tls_arg;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);


  ri = bfd_get_section_by_name (output_bfd, ".reginfo");
  if (ri != ((void*)0))
    bfd_set_section_size (output_bfd, ri, sizeof (Elf32_External_RegInfo));

  if (! (info->relocatable
  || ! mips_elf_hash_table (info)->mips16_stubs_seen))
    mips_elf_link_hash_traverse (mips_elf_hash_table (info),
     mips_elf_check_mips16_stubs, ((void*)0));

  dynobj = elf_hash_table (info)->dynobj;
  if (dynobj == ((void*)0))

    return TRUE;

  g = mips_elf_got_info (dynobj, &s);
  if (s == ((void*)0))
    return TRUE;




  for (sub = info->input_bfds; sub; sub = sub->link_next)
    {
      asection *subsection;

      for (subsection = sub->sections;
    subsection;
    subsection = subsection->next)
 {
   if ((subsection->flags & SEC_ALLOC) == 0)
     continue;
   loadable_size += ((subsection->size + 0xf)
       &~ (bfd_size_type) 0xf);
 }
    }






  if (! mips_elf_sort_hash_table (info, 1))
    return FALSE;

  if (g->global_gotsym != ((void*)0))
    i = elf_hash_table (info)->dynsymcount - g->global_gotsym->dynindx;
  else


    i = 0;





  dynsymcount = (elf_hash_table (info)->dynsymcount
   + count_section_dynsyms (output_bfd, info));


  htab->function_stub_size = (dynsymcount > 0x10000
         ? MIPS_FUNCTION_STUB_BIG_SIZE
         : MIPS_FUNCTION_STUB_NORMAL_SIZE);




  loadable_size += htab->function_stub_size * (i + 1);

  if (htab->is_vxworks)



    local_gotno = 0;
  else


    local_gotno = (loadable_size >> 16) + 5;

  g->local_gotno += local_gotno;
  s->size += g->local_gotno * MIPS_ELF_GOT_SIZE (output_bfd);

  g->global_gotno = i;
  s->size += i * MIPS_ELF_GOT_SIZE (output_bfd);




  count_tls_arg.info = info;
  count_tls_arg.needed = 0;
  elf_link_hash_traverse (elf_hash_table (info),
     mips_elf_count_global_tls_entries,
     &count_tls_arg);
  g->tls_gotno += count_tls_arg.needed;
  s->size += g->tls_gotno * MIPS_ELF_GOT_SIZE (output_bfd);

  mips_elf_resolve_final_got_entries (g);




  if (!htab->is_vxworks && s->size > MIPS_ELF_GOT_MAX_SIZE (info))
    {
      if (! mips_elf_multi_got (output_bfd, info, g, s, local_gotno))
 return FALSE;
    }
  else
    {

      g->tls_assigned_gotno = g->global_gotno + g->local_gotno;
      htab_traverse (g->got_entries, mips_elf_initialize_tls_index, g);
    }

  return TRUE;
}
