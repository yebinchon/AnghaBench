
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


struct internal_reloc {int r_vaddr; int r_symndx; int r_offset; scalar_t__ r_type; } ;
struct external_reloc {int dummy; } ;
typedef int n ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_23__ {TYPE_2__** outsymbols; TYPE_3__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_24__ {char* name; scalar_t__ section; int flags; TYPE_1__* the_bfd; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_25__ {int reloc_count; int vma; int rel_filepos; TYPE_4__** orelocation; struct TYPE_25__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_26__ {int address; int addend; TYPE_19__* howto; TYPE_2__** sym_ptr_ptr; } ;
typedef TYPE_4__ arelent ;
struct TYPE_22__ {scalar_t__ type; } ;


 int BSF_SECTION_SYM ;
 int FALSE ;
 scalar_t__ R_IHCONST ;
 scalar_t__ SECTION_RELATIVE_ABSOLUTE_SYMBOL_P (TYPE_4__*,TYPE_3__*) ;
 int SEEK_SET ;
 int SELECT_RELOC (struct internal_reloc,TYPE_19__*) ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,TYPE_1__*,int) ;
 scalar_t__ bfd_abs_section_ptr ;
 scalar_t__ bfd_bwrite (struct external_reloc*,int,TYPE_1__*) ;
 scalar_t__ bfd_coff_relsz (TYPE_1__*) ;
 int bfd_error_bad_value ;
 TYPE_4__** bfd_malloc (int) ;
 scalar_t__ bfd_seek (TYPE_1__*,int ,int ) ;
 int bfd_set_error (int ) ;
 int coff_swap_reloc_out (TYPE_1__*,struct internal_reloc*,struct external_reloc*) ;
 int compare_arelent_ptr ;
 int free (TYPE_4__**) ;
 int get_index (TYPE_2__*) ;
 int memcpy (TYPE_4__**,TYPE_4__**,size_t) ;
 int memset (struct internal_reloc*,int ,int) ;
 int obj_conv_table_size (TYPE_1__*) ;
 scalar_t__ obj_pe (TYPE_1__*) ;
 int qsort (TYPE_4__**,int,int,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bfd_boolean
coff_write_relocs (bfd * abfd, int first_undef)
{
  asection *s;

  for (s = abfd->sections; s != ((void*)0); s = s->next)
    {
      unsigned int i;
      struct external_reloc dst;
      arelent **p;


      p = s->orelocation;
      if (bfd_seek (abfd, s->rel_filepos, SEEK_SET) != 0)
 return FALSE;
      for (i = 0; i < s->reloc_count; i++)
 {
   struct internal_reloc n;
   arelent *q = p[i];

   memset (& n, 0, sizeof (n));
   if (q->sym_ptr_ptr[0]->the_bfd != abfd)
     {
       int j;
       const char *sname = q->sym_ptr_ptr[0]->name;
       asymbol **outsyms = abfd->outsymbols;

       for (j = first_undef; outsyms[j]; j++)
  {
    const char *intable = outsyms[j]->name;

    if (strcmp (intable, sname) == 0)
      {

        q->sym_ptr_ptr = outsyms + j;
        break;
      }
  }
     }

   n.r_vaddr = q->address + s->vma;
     if (q->sym_ptr_ptr)
       {



  if ((*q->sym_ptr_ptr)->section == bfd_abs_section_ptr
      && ((*q->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0)


    n.r_symndx = -1;
  else
    {
      n.r_symndx = get_index ((*(q->sym_ptr_ptr)));


      if (n.r_symndx > obj_conv_table_size (abfd))
        {
   bfd_set_error (bfd_error_bad_value);
   _bfd_error_handler (_("%B: reloc against a non-existant symbol index: %ld"),
         abfd, n.r_symndx);
   return FALSE;
        }
    }
       }
   n.r_type = q->howto->type;

   coff_swap_reloc_out (abfd, &n, &dst);

   if (bfd_bwrite (& dst, (bfd_size_type) bfd_coff_relsz (abfd),
    abfd) != bfd_coff_relsz (abfd))
     return FALSE;
 }





    }

  return TRUE;
}
