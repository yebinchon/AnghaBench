
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct elf_backend_data {char* (* elf_backend_print_symbol_all ) (int *,void*,TYPE_4__*) ;} ;
struct TYPE_14__ {unsigned char st_other; int st_size; int st_value; } ;
struct TYPE_15__ {unsigned int version; TYPE_2__ internal_elf_sym; } ;
typedef TYPE_3__ elf_symbol_type ;
typedef int bfd_vma ;
typedef int bfd_print_symbol_type ;
typedef int bfd ;
struct TYPE_16__ {char const* name; TYPE_10__* section; scalar_t__ flags; int value; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_19__ {unsigned int cverdefs; TYPE_5__* verref; TYPE_1__* verdef; int dynverref_section; int dynverdef_section; int dynversym_section; } ;
struct TYPE_18__ {unsigned int vna_other; char* vna_nodename; struct TYPE_18__* vna_nextptr; } ;
struct TYPE_17__ {TYPE_6__* vn_auxptr; struct TYPE_17__* vn_nextref; } ;
struct TYPE_13__ {char* vd_nodename; } ;
struct TYPE_12__ {char* name; } ;
typedef int FILE ;
typedef TYPE_5__ Elf_Internal_Verneed ;
typedef TYPE_6__ Elf_Internal_Vernaux ;





 int VERSYM_HIDDEN ;
 unsigned int VERSYM_VERSION ;
 int bfd_fprintf_vma (int *,int *,int ) ;
 int bfd_is_com_section (TYPE_10__*) ;



 int bfd_print_symbol_vandf (int *,int *,TYPE_4__*) ;
 TYPE_8__* elf_tdata (int *) ;
 int fprintf (int *,char*,...) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int putc (char,int *) ;
 int strlen (char const*) ;
 char* stub1 (int *,void*,TYPE_4__*) ;

void
bfd_elf_print_symbol (bfd *abfd,
        void *filep,
        asymbol *symbol,
        bfd_print_symbol_type how)
{
  FILE *file = filep;
  switch (how)
    {
    case 128:
      fprintf (file, "%s", symbol->name);
      break;
    case 129:
      fprintf (file, "elf ");
      bfd_fprintf_vma (abfd, file, symbol->value);
      fprintf (file, " %lx", (long) symbol->flags);
      break;
    case 130:
      {
 const char *section_name;
 const char *name = ((void*)0);
 const struct elf_backend_data *bed;
 unsigned char st_other;
 bfd_vma val;

 section_name = symbol->section ? symbol->section->name : "(*none*)";

 bed = get_elf_backend_data (abfd);
 if (bed->elf_backend_print_symbol_all)
   name = (*bed->elf_backend_print_symbol_all) (abfd, filep, symbol);

 if (name == ((void*)0))
   {
     name = symbol->name;
     bfd_print_symbol_vandf (abfd, file, symbol);
   }

 fprintf (file, " %s\t", section_name);




 if (bfd_is_com_section (symbol->section))
   val = ((elf_symbol_type *) symbol)->internal_elf_sym.st_value;
 else
   val = ((elf_symbol_type *) symbol)->internal_elf_sym.st_size;
 bfd_fprintf_vma (abfd, file, val);


 if (elf_tdata (abfd)->dynversym_section != 0
     && (elf_tdata (abfd)->dynverdef_section != 0
  || elf_tdata (abfd)->dynverref_section != 0))
   {
     unsigned int vernum;
     const char *version_string;

     vernum = ((elf_symbol_type *) symbol)->version & VERSYM_VERSION;

     if (vernum == 0)
       version_string = "";
     else if (vernum == 1)
       version_string = "Base";
     else if (vernum <= elf_tdata (abfd)->cverdefs)
       version_string =
  elf_tdata (abfd)->verdef[vernum - 1].vd_nodename;
     else
       {
  Elf_Internal_Verneed *t;

  version_string = "";
  for (t = elf_tdata (abfd)->verref;
       t != ((void*)0);
       t = t->vn_nextref)
    {
      Elf_Internal_Vernaux *a;

      for (a = t->vn_auxptr; a != ((void*)0); a = a->vna_nextptr)
        {
   if (a->vna_other == vernum)
     {
       version_string = a->vna_nodename;
       break;
     }
        }
    }
       }

     if ((((elf_symbol_type *) symbol)->version & VERSYM_HIDDEN) == 0)
       fprintf (file, "  %-11s", version_string);
     else
       {
  int i;

  fprintf (file, " (%s)", version_string);
  for (i = 10 - strlen (version_string); i > 0; --i)
    putc (' ', file);
       }
   }


 st_other = ((elf_symbol_type *) symbol)->internal_elf_sym.st_other;

 switch (st_other)
   {
   case 0: break;
   case 132: fprintf (file, " .internal"); break;
   case 133: fprintf (file, " .hidden"); break;
   case 131: fprintf (file, " .protected"); break;
   default:


     fprintf (file, " 0x%02x", (unsigned int) st_other);
   }

 fprintf (file, " %s", name);
      }
      break;
    }
}
