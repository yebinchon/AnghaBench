
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct bfd_link_info {int flags; int shared; } ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_11__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_12__ {scalar_t__ size; int flags; int * contents; scalar_t__ reloc_count; struct TYPE_12__* output_section; TYPE_1__* owner; struct TYPE_12__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_13__ {scalar_t__ dynamic_sections_created; TYPE_1__* dynobj; } ;


 int BFD_ASSERT (int ) ;
 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int DF_TEXTREL ;
 int DT_DEBUG ;
 int DT_PLTGOT ;
 int DT_REL ;
 int DT_RELENT ;
 int DT_RELSZ ;
 int DT_SCORE_BASE_ADDRESS ;
 int DT_SCORE_GOTSYM ;
 int DT_SCORE_HIPAGENO ;
 int DT_SCORE_LOCAL_GOTNO ;
 int DT_SCORE_SYMTABNO ;
 int DT_SCORE_UNREFEXTNO ;
 int DT_TEXTREL ;
 scalar_t__ ELF_DYNAMIC_INTERPRETER ;
 scalar_t__ FALSE ;
 int SCORE_ELF_ADD_DYNAMIC_ENTRY (struct bfd_link_info*,int ,int ) ;
 char* SCORE_ELF_STUB_SECTION_NAME ;
 scalar_t__ SCORE_FUNCTION_STUB_SIZE ;
 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_LINKER_CREATED ;
 int SEC_READONLY ;
 scalar_t__ TRUE ;
 int bfd_error_no_memory ;
 TYPE_2__* bfd_get_section_by_name (TYPE_1__*,char const*) ;
 char* bfd_get_section_name (TYPE_1__*,TYPE_2__*) ;
 int bfd_set_error (int ) ;
 int * bfd_zalloc (TYPE_1__*,scalar_t__) ;
 TYPE_4__* elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ score_elf_rel_dyn_section (TYPE_1__*,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static bfd_boolean
_bfd_score_elf_size_dynamic_sections (bfd *output_bfd, struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *s;
  bfd_boolean reltext;

  dynobj = elf_hash_table (info)->dynobj;
  BFD_ASSERT (dynobj != ((void*)0));

  if (elf_hash_table (info)->dynamic_sections_created)
    {

      if (!info->shared)
        {
          s = bfd_get_section_by_name (dynobj, ".interp");
          BFD_ASSERT (s != ((void*)0));
          s->size = strlen (ELF_DYNAMIC_INTERPRETER) + 1;
          s->contents = (bfd_byte *) ELF_DYNAMIC_INTERPRETER;
        }
    }




  reltext = FALSE;
  for (s = dynobj->sections; s != ((void*)0); s = s->next)
    {
      const char *name;

      if ((s->flags & SEC_LINKER_CREATED) == 0)
        continue;



      name = bfd_get_section_name (dynobj, s);

      if (CONST_STRNEQ (name, ".rel"))
        {
          if (s->size == 0)
            {





              if (s->output_section != ((void*)0)
                  && strcmp (name,
                             bfd_get_section_name (s->output_section->owner,
                                                   s->output_section)) == 0)
                s->flags |= SEC_EXCLUDE;
            }
          else
            {
              const char *outname;
              asection *target;







              outname = bfd_get_section_name (output_bfd, s->output_section);
              target = bfd_get_section_by_name (output_bfd, outname + 4);
              if ((target != ((void*)0)
                   && (target->flags & SEC_READONLY) != 0
                   && (target->flags & SEC_ALLOC) != 0) || strcmp (outname, ".rel.dyn") == 0)
                reltext = TRUE;



              if (strcmp (name, ".rel.dyn") != 0)
                s->reloc_count = 0;
            }
        }
      else if (CONST_STRNEQ (name, ".got"))
        {




        }
      else if (strcmp (name, SCORE_ELF_STUB_SECTION_NAME) == 0)
        {


          s->size += SCORE_FUNCTION_STUB_SIZE;
        }
      else if (! CONST_STRNEQ (name, ".init"))
        {

          continue;
        }


      s->contents = bfd_zalloc (dynobj, s->size);
      if (s->contents == ((void*)0) && s->size != 0)
        {
          bfd_set_error (bfd_error_no_memory);
          return FALSE;
        }
    }

  if (elf_hash_table (info)->dynamic_sections_created)
    {






      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_DEBUG, 0))
 return FALSE;

      if (reltext)
 info->flags |= DF_TEXTREL;

      if ((info->flags & DF_TEXTREL) != 0)
 {
   if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_TEXTREL, 0))
     return FALSE;
 }

      if (! SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_PLTGOT, 0))
 return FALSE;

      if (score_elf_rel_dyn_section (dynobj, FALSE))
 {
   if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_REL, 0))
     return FALSE;

   if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELSZ, 0))
     return FALSE;

   if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELENT, 0))
     return FALSE;
 }

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_BASE_ADDRESS, 0))
        return FALSE;

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_LOCAL_GOTNO, 0))
        return FALSE;

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_SYMTABNO, 0))
        return FALSE;

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_UNREFEXTNO, 0))
        return FALSE;

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_GOTSYM, 0))
        return FALSE;

      if (!SCORE_ELF_ADD_DYNAMIC_ENTRY (info, DT_SCORE_HIPAGENO, 0))
 return FALSE;
    }

  return TRUE;
}
