
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int id; int flags; int align; int size; int* data; TYPE_4__* sec; TYPE_3__** sympp; TYPE_3__* sym; int name; } ;
typedef TYPE_1__ sinfo ;
typedef int flagword ;
struct TYPE_17__ {char* name; int ordinal; int hint; int import_name; int noname; int data; } ;
typedef TYPE_2__ export_type ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_18__ {scalar_t__ value; void* flags; TYPE_4__* section; void* name; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_19__ {int reloc_count; TYPE_5__** orelocation; void* name; struct TYPE_19__* output_section; } ;
typedef TYPE_4__ asection ;
struct TYPE_20__ {int address; TYPE_3__** sym_ptr_ptr; void* howto; int addend; } ;
typedef TYPE_5__ arelent ;


 int BFD_RELOC_16_GOTOFF ;
 int BFD_RELOC_32 ;
 int BFD_RELOC_32_GOTOFF ;
 int BFD_RELOC_32_PCREL ;
 int BFD_RELOC_RVA ;
 void* BSF_GLOBAL ;
 void* BSF_LOCAL ;
 int C_THUMBEXTFUNC ;
 int EXTRA ;
 int F_INTERWORK ;
 int HOW_BFD_ARCH ;
 int HOW_BFD_READ_TARGET ;
 int HOW_BFD_WRITE_TARGET ;
 int HOW_JTAB ;
 int HOW_JTAB_ROFF ;
 int HOW_JTAB_SIZE ;




 scalar_t__ MARM_INTERWORK ;
 scalar_t__ MPPC ;
 scalar_t__ MTHUMB ;
 scalar_t__ MX86 ;
 int NSECS ;



 char* TMP_STUB ;
 int _ (char*) ;
 int abort () ;
 int bfd_applicable_section_flags (int *) ;
 int bfd_close (int *) ;
 int bfd_coff_set_symbol_class (int *,TYPE_3__*,int ) ;
 void* bfd_make_empty_symbol (int *) ;
 TYPE_4__* bfd_make_section_old_way (int *,int ) ;
 int bfd_object ;
 int * bfd_openr (char*,int ) ;
 int * bfd_openw (char*,int ) ;
 int bfd_put_32 (int *,int,char*) ;
 void* bfd_reloc_type_lookup (int *,int ) ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_private_flags (int *,int ) ;
 int bfd_set_section_alignment (int *,TYPE_4__*,int) ;
 int bfd_set_section_contents (int *,TYPE_4__*,int*,int ,int) ;
 int bfd_set_section_flags (int *,TYPE_4__*,int) ;
 int bfd_set_section_size (int *,TYPE_4__*,int) ;
 int bfd_set_section_vma (int *,TYPE_4__*,int ) ;
 int bfd_set_symtab (int *,TYPE_3__**,int) ;
 int bfd_und_section ;
 scalar_t__ create_compat_implib ;
 int fatal (int ,char*) ;
 void* head_label ;
 int inform (int ,char*) ;
 scalar_t__ machine ;
 void* make_imp_label (char*,char*) ;
 void* make_label (char*,char*) ;
 int memcpy (int*,int ,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ no_idata4 ;
 scalar_t__ no_idata5 ;
 int ppc_glue_insn ;
 TYPE_1__* secdata ;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xlate (int ) ;
 void* xmalloc (int) ;

__attribute__((used)) static bfd *
make_one_lib_file (export_type *exp, int i)
{
  bfd * abfd;
  asymbol * exp_label;
  asymbol * iname = 0;
  asymbol * iname2;
  asymbol * iname_lab;
  asymbol ** iname_lab_pp;
  asymbol ** iname_pp;
  asymbol * ptrs[NSECS + 4 + 0 + 1];
  flagword applicable;
  char * outname = xmalloc (strlen (TMP_STUB) + 10);
  int oidx = 0;


  sprintf (outname, "%s%05d.o", TMP_STUB, i);

  abfd = bfd_openw (outname, HOW_BFD_WRITE_TARGET);

  if (!abfd)

    fatal (_("bfd_open failed open stub file: %s"), outname);


  inform (_("Creating stub file: %s"), outname);

  bfd_set_format (abfd, bfd_object);
  bfd_set_arch_mach (abfd, HOW_BFD_ARCH, 0);






  applicable = bfd_applicable_section_flags (abfd);


  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;

      if (si->id != i)
 abort();
      si->sec = bfd_make_section_old_way (abfd, si->name);
      bfd_set_section_flags (abfd,
        si->sec,
        si->flags & applicable);

      bfd_set_section_alignment(abfd, si->sec, si->align);
      si->sec->output_section = si->sec;
      si->sym = bfd_make_empty_symbol(abfd);
      si->sym->name = si->sec->name;
      si->sym->section = si->sec;
      si->sym->flags = BSF_LOCAL;
      si->sym->value = 0;
      ptrs[oidx] = si->sym;
      si->sympp = ptrs + oidx;
      si->size = 0;
      si->data = ((void*)0);

      oidx++;
    }

  if (! exp->data)
    {
      exp_label = bfd_make_empty_symbol (abfd);
      exp_label->name = make_imp_label ("", exp->name);
 exp_label->section = secdata[128].sec;

      exp_label->flags = BSF_GLOBAL;
      exp_label->value = 0;





      ptrs[oidx++] = exp_label;
    }




  if (create_compat_implib)
    {
      iname = bfd_make_empty_symbol (abfd);
      iname->name = make_imp_label ("___imp", exp->name);
      iname->section = secdata[133].sec;
      iname->flags = BSF_GLOBAL;
      iname->value = 0;
    }

  iname2 = bfd_make_empty_symbol (abfd);
  iname2->name = make_imp_label ("__imp_", exp->name);
  iname2->section = secdata[133].sec;
  iname2->flags = BSF_GLOBAL;
  iname2->value = 0;

  iname_lab = bfd_make_empty_symbol (abfd);

  iname_lab->name = head_label;
  iname_lab->section = (asection *) &bfd_und_section;
  iname_lab->flags = 0;
  iname_lab->value = 0;

  iname_pp = ptrs + oidx;
  if (create_compat_implib)
    ptrs[oidx++] = iname;
  ptrs[oidx++] = iname2;

  iname_lab_pp = ptrs + oidx;
  ptrs[oidx++] = iname_lab;
  ptrs[oidx] = 0;

  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;
      asection *sec = si->sec;
      arelent *rel;
      arelent **rpp;

      switch (i)
 {
 case 128:
   if (! exp->data)
     {
       si->size = HOW_JTAB_SIZE;
       si->data = xmalloc (HOW_JTAB_SIZE);
       memcpy (si->data, HOW_JTAB, HOW_JTAB_SIZE);


       rel = xmalloc (sizeof (arelent));

       rpp = xmalloc (sizeof (arelent *) * 2);
       rpp[0] = rel;
       rpp[1] = 0;

       rel->address = HOW_JTAB_ROFF;
       rel->addend = 0;

       if (machine == MPPC)
  {
    rel->howto = bfd_reloc_type_lookup (abfd,
            BFD_RELOC_16_GOTOFF);
    rel->sym_ptr_ptr = iname_pp;
  }
       else if (machine == MX86)
  {
    rel->howto = bfd_reloc_type_lookup (abfd,
            BFD_RELOC_32_PCREL);
    rel->sym_ptr_ptr = iname_pp;
  }
       else
  {
    rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
    rel->sym_ptr_ptr = secdata[133].sympp;
  }
       sec->orelocation = rpp;
       sec->reloc_count = 1;
     }
   break;
 case 134:
 case 133:
   si->data = xmalloc (4);
   si->size = 4;

   if (exp->noname)
     {
       si->data[0] = exp->ordinal ;
       si->data[1] = exp->ordinal >> 8;
       si->data[2] = exp->ordinal >> 16;
       si->data[3] = 0x80;
     }
   else
     {
       sec->reloc_count = 1;
       memset (si->data, 0, si->size);
       rel = xmalloc (sizeof (arelent));
       rpp = xmalloc (sizeof (arelent *) * 2);
       rpp[0] = rel;
       rpp[1] = 0;
       rel->address = 0;
       rel->addend = 0;
       rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_RVA);
       rel->sym_ptr_ptr = secdata[132].sympp;
       sec->orelocation = rpp;
     }

   break;

 case 132:
   if (!exp->noname)
     {



       int idx = exp->hint;
       si->size = strlen (xlate (exp->import_name)) + 3;
       si->data = xmalloc (si->size);
       si->data[0] = idx & 0xff;
       si->data[1] = idx >> 8;
       strcpy ((char *) si->data + 2, xlate (exp->import_name));
     }
   break;
 case 131:
   si->size = 4;
   si->data = xmalloc (4);
   memset (si->data, 0, si->size);
   rel = xmalloc (sizeof (arelent));
   rpp = xmalloc (sizeof (arelent *) * 2);
   rpp[0] = rel;
   rel->address = 0;
   rel->addend = 0;
   rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_RVA);
   rel->sym_ptr_ptr = iname_lab_pp;
   sec->orelocation = rpp;
   sec->reloc_count = 1;
   break;
 }
    }

  {
    bfd_vma vma = 0;

    for (i = 0; i < NSECS; i++)
      {
 sinfo *si = secdata + i;

 bfd_set_section_size (abfd, si->sec, si->size);
 bfd_set_section_vma (abfd, si->sec, vma);
      }
  }

  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;

      if (i == 133 && no_idata5)
 continue;

      if (i == 134 && no_idata4)
 continue;

      bfd_set_section_contents (abfd, si->sec,
    si->data, 0,
    si->size);
    }

  bfd_set_symtab (abfd, ptrs, oidx);
  bfd_close (abfd);
  abfd = bfd_openr (outname, HOW_BFD_READ_TARGET);
  return abfd;
}
