
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_28__ {unsigned int x_lnno; } ;
struct TYPE_29__ {TYPE_2__ x_lnsz; } ;
struct TYPE_30__ {TYPE_3__ x_misc; } ;
union internal_auxent {TYPE_4__ x_sym; } ;
struct coff_section_tdata {unsigned int i; scalar_t__ offset; char* function; unsigned int line_base; } ;
struct TYPE_32__ {scalar_t__ _n_offset; } ;
struct TYPE_33__ {TYPE_6__ _n_n; } ;
struct TYPE_34__ {scalar_t__ n_sclass; int n_numaux; scalar_t__ n_scnum; scalar_t__ n_value; TYPE_7__ _n; } ;
struct TYPE_35__ {union internal_auxent auxent; TYPE_8__ syment; } ;
struct TYPE_22__ {TYPE_9__ u; } ;
typedef TYPE_10__ combined_entry_type ;
struct TYPE_27__ {scalar_t__ value; char* name; } ;
struct TYPE_23__ {TYPE_10__* native; TYPE_1__ symbol; } ;
typedef TYPE_11__ coff_symbol_type ;
struct TYPE_24__ {int raw_syment_count; TYPE_10__* raw_syments; int dwarf2_find_line_info; int line_info; } ;
typedef TYPE_12__ coff_data_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_25__ {unsigned int lineno_count; scalar_t__ used_by_bfd; int * owner; TYPE_14__* lineno; } ;
typedef TYPE_13__ asection ;
struct TYPE_31__ {scalar_t__ offset; scalar_t__ sym; } ;
struct TYPE_26__ {unsigned int line_number; TYPE_5__ u; } ;
typedef TYPE_14__ alent ;


 scalar_t__ C_FILE ;
 scalar_t__ FALSE ;
 scalar_t__ N_DEBUG ;
 scalar_t__ TRUE ;
 scalar_t__ _bfd_dwarf2_find_nearest_line (int *,TYPE_13__*,int **,scalar_t__,char const**,char const**,unsigned int*,int ,int *) ;
 int _bfd_stab_section_find_nearest_line (int *,int **,TYPE_13__*,scalar_t__,scalar_t__*,char const**,char const**,unsigned int*,int *) ;
 int bfd_family_coff (int *) ;
 scalar_t__ bfd_get_section_vma (int *,TYPE_13__*) ;
 scalar_t__ bfd_zalloc (int *,int) ;
 TYPE_12__* coff_data (int *) ;
 struct coff_section_tdata* coff_section_data (int *,TYPE_13__*) ;
 TYPE_13__* coff_section_from_bfd_index (int *,scalar_t__) ;

bfd_boolean
coff_find_nearest_line (bfd *abfd,
   asection *section,
   asymbol **symbols,
   bfd_vma offset,
   const char **filename_ptr,
   const char **functionname_ptr,
   unsigned int *line_ptr)
{
  bfd_boolean found;
  unsigned int i;
  unsigned int line_base;
  coff_data_type *cof = coff_data (abfd);

  combined_entry_type *p;
  combined_entry_type *pend;
  alent *l;
  struct coff_section_tdata *sec_data;
  bfd_size_type amt;



  if (! _bfd_stab_section_find_nearest_line (abfd, symbols, section, offset,
          &found, filename_ptr,
          functionname_ptr, line_ptr,
          &coff_data(abfd)->line_info))
    return FALSE;

  if (found)
    return TRUE;


  if (_bfd_dwarf2_find_nearest_line (abfd, section, symbols, offset,
         filename_ptr, functionname_ptr,
         line_ptr, 0,
         &coff_data(abfd)->dwarf2_find_line_info))
    return TRUE;

  *filename_ptr = 0;
  *functionname_ptr = 0;
  *line_ptr = 0;


  if (!bfd_family_coff (abfd))
    return FALSE;

  if (cof == ((void*)0))
    return FALSE;


  p = cof->raw_syments;
  if (!p)
    return FALSE;

  pend = p + cof->raw_syment_count;
  while (p < pend)
    {
      if (p->u.syment.n_sclass == C_FILE)
 break;
      p += 1 + p->u.syment.n_numaux;
    }

  if (p < pend)
    {
      bfd_vma sec_vma;
      bfd_vma maxdiff;


      sec_vma = bfd_get_section_vma (abfd, section);
      *filename_ptr = (char *) p->u.syment._n._n_n._n_offset;
      maxdiff = (bfd_vma) 0 - (bfd_vma) 1;
      while (1)
 {
   combined_entry_type *p2;

   for (p2 = p + 1 + p->u.syment.n_numaux;
        p2 < pend;
        p2 += 1 + p2->u.syment.n_numaux)
     {
       if (p2->u.syment.n_scnum > 0
    && (section
        == coff_section_from_bfd_index (abfd,
            p2->u.syment.n_scnum)))
  break;
       if (p2->u.syment.n_sclass == C_FILE)
  {
    p2 = pend;
    break;
  }
     }



   if (p2 < pend
       && offset + sec_vma >= (bfd_vma) p2->u.syment.n_value
       && offset + sec_vma - (bfd_vma) p2->u.syment.n_value <= maxdiff)
     {
       *filename_ptr = (char *) p->u.syment._n._n_n._n_offset;
       maxdiff = offset + sec_vma - p2->u.syment.n_value;
     }



   if (p >= cof->raw_syments + p->u.syment.n_value)
     break;

   p = cof->raw_syments + p->u.syment.n_value;
   if (p > pend || p->u.syment.n_sclass != C_FILE)
     break;
 }
    }




  sec_data = coff_section_data (abfd, section);
  if (sec_data != ((void*)0)
      && sec_data->i > 0
      && offset >= sec_data->offset)
    {
      i = sec_data->i;
      *functionname_ptr = sec_data->function;
      line_base = sec_data->line_base;
    }
  else
    {
      i = 0;
      line_base = 0;
    }

  if (section->lineno != ((void*)0))
    {
      bfd_vma last_value = 0;

      l = &section->lineno[i];

      for (; i < section->lineno_count; i++)
 {
   if (l->line_number == 0)
     {

       coff_symbol_type *coff = (coff_symbol_type *) (l->u.sym);
       if (coff->symbol.value > offset)
  break;
       *functionname_ptr = coff->symbol.name;
       last_value = coff->symbol.value;
       if (coff->native)
  {
    combined_entry_type *s = coff->native;
    s = s + 1 + s->u.syment.n_numaux;



    if (s->u.syment.n_scnum == N_DEBUG)
      s = s + 1 + s->u.syment.n_numaux;


    if (s->u.syment.n_numaux)
      {

        union internal_auxent *a = &((s + 1)->u.auxent);
        line_base = a->x_sym.x_misc.x_lnsz.x_lnno;
        *line_ptr = line_base;
      }
  }
     }
   else
     {
       if (l->u.offset > offset)
  break;
       *line_ptr = l->line_number + line_base - 1;
     }
   l++;
 }







      if (i >= section->lineno_count
   && last_value != 0
   && offset - last_value > 0x100)
 {
   *functionname_ptr = ((void*)0);
   *line_ptr = 0;
 }
    }


  if (sec_data == ((void*)0) && section->owner == abfd)
    {
      amt = sizeof (struct coff_section_tdata);
      section->used_by_bfd = bfd_zalloc (abfd, amt);
      sec_data = (struct coff_section_tdata *) section->used_by_bfd;
    }
  if (sec_data != ((void*)0))
    {
      sec_data->offset = offset;
      sec_data->i = i;
      sec_data->function = *functionname_ptr;
      sec_data->line_base = line_base;
    }

  return TRUE;
}
