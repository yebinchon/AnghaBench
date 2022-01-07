
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {void* _n_offset; scalar_t__ _n_zeroes; } ;
struct TYPE_18__ {int _n_name; TYPE_1__ _n_n; } ;
struct internal_syment {int n_value; scalar_t__ n_scnum; scalar_t__ n_sclass; int n_name; void* n_numaux; void* n_type; TYPE_3__ _n; } ;
typedef int flagword ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_20__ {TYPE_6__* sections; } ;
typedef TYPE_5__ bfd ;
struct TYPE_21__ {int target_index; int alignment_power; struct TYPE_21__* next; int * userdata; scalar_t__ lineno_count; scalar_t__ line_filepos; scalar_t__ reloc_count; scalar_t__ rel_filepos; scalar_t__ filepos; scalar_t__ size; scalar_t__ lma; scalar_t__ vma; int name; } ;
typedef TYPE_6__ asection ;
struct TYPE_17__ {int e_offset; } ;
struct TYPE_19__ {scalar_t__* e_name; TYPE_2__ e; } ;
struct TYPE_22__ {int e_numaux; int e_sclass; int e_type; int e_scnum; int e_value; TYPE_4__ e; } ;
typedef TYPE_7__ SYMENT ;


 scalar_t__ C_SECTION ;
 scalar_t__ C_STAT ;
 void* H_GET_16 (TYPE_5__*,int ) ;
 void* H_GET_32 (TYPE_5__*,int ) ;
 void* H_GET_8 (TYPE_5__*,int ) ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SYMNMLEN ;
 char* bfd_alloc (TYPE_5__*,scalar_t__) ;
 TYPE_6__* bfd_make_section_anyway_with_flags (TYPE_5__*,char*,int) ;
 int coff_swap_sym_in_hook (TYPE_5__*,void*,void*) ;
 int memcpy (int ,scalar_t__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

void
_bfd_XXi_swap_sym_in (bfd * abfd, void * ext1, void * in1)
{
  SYMENT *ext = (SYMENT *) ext1;
  struct internal_syment *in = (struct internal_syment *) in1;

  if (ext->e.e_name[0] == 0)
    {
      in->_n._n_n._n_zeroes = 0;
      in->_n._n_n._n_offset = H_GET_32 (abfd, ext->e.e.e_offset);
    }
  else
    memcpy (in->_n._n_name, ext->e.e_name, SYMNMLEN);

  in->n_value = H_GET_32 (abfd, ext->e_value);
  in->n_scnum = H_GET_16 (abfd, ext->e_scnum);

  if (sizeof (ext->e_type) == 2)
    in->n_type = H_GET_16 (abfd, ext->e_type);
  else
    in->n_type = H_GET_32 (abfd, ext->e_type);

  in->n_sclass = H_GET_8 (abfd, ext->e_sclass);
  in->n_numaux = H_GET_8 (abfd, ext->e_numaux);
  if (in->n_sclass == C_SECTION)
    {
      in->n_value = 0x0;


      if (in->n_scnum == 0)
 {
   asection *sec;

   for (sec = abfd->sections; sec; sec = sec->next)
     {
       if (strcmp (sec->name, in->n_name) == 0)
  {
    in->n_scnum = sec->target_index;
    break;
  }
     }
 }

      if (in->n_scnum == 0)
 {
   int unused_section_number = 0;
   asection *sec;
   char *name;
   flagword flags;

   for (sec = abfd->sections; sec; sec = sec->next)
     if (unused_section_number <= sec->target_index)
       unused_section_number = sec->target_index + 1;

   name = bfd_alloc (abfd, (bfd_size_type) strlen (in->n_name) + 10);
   if (name == ((void*)0))
     return;
   strcpy (name, in->n_name);
   flags = SEC_HAS_CONTENTS | SEC_ALLOC | SEC_DATA | SEC_LOAD;
   sec = bfd_make_section_anyway_with_flags (abfd, name, flags);

   sec->vma = 0;
   sec->lma = 0;
   sec->size = 0;
   sec->filepos = 0;
   sec->rel_filepos = 0;
   sec->reloc_count = 0;
   sec->line_filepos = 0;
   sec->lineno_count = 0;
   sec->userdata = ((void*)0);
   sec->next = ((void*)0);
   sec->alignment_power = 2;

   sec->target_index = unused_section_number;

   in->n_scnum = unused_section_number;
 }
      in->n_sclass = C_STAT;
    }







}
