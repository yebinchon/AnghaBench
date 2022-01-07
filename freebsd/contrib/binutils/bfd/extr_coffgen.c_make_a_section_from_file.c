
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct internal_scnhdr {char* s_name; scalar_t__ s_scnptr; scalar_t__ s_nreloc; scalar_t__ s_nlnno; int s_lnnoptr; int s_relptr; int s_size; int s_paddr; int s_vaddr; } ;
typedef int flagword ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {scalar_t__ filepos; scalar_t__ reloc_count; unsigned int target_index; int flags; scalar_t__ lineno_count; int * next; int * userdata; int line_filepos; int rel_filepos; int size; int lma; int vma; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int SCNNMLEN ;
 int SEC_COFF_SHARED_LIBRARY ;
 int SEC_HAS_CONTENTS ;
 int SEC_RELOC ;
 int TRUE ;
 char* _bfd_coff_read_string_table (int *) ;
 char* bfd_alloc (int *,scalar_t__) ;
 scalar_t__ bfd_coff_long_section_names (int *) ;
 int bfd_coff_set_alignment_hook (int *,TYPE_1__*,struct internal_scnhdr*) ;
 int bfd_coff_styp_to_sec_flags_hook (int *,struct internal_scnhdr*,char*,TYPE_1__*,int*) ;
 TYPE_1__* bfd_make_section_anyway (int *,char*) ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static bfd_boolean
make_a_section_from_file (bfd *abfd,
     struct internal_scnhdr *hdr,
     unsigned int target_index)
{
  asection *return_section;
  char *name;
  bfd_boolean result = TRUE;
  flagword flags;

  name = ((void*)0);


  if (bfd_coff_long_section_names (abfd)
      && hdr->s_name[0] == '/')
    {
      char buf[SCNNMLEN];
      long strindex;
      char *p;
      const char *strings;

      memcpy (buf, hdr->s_name + 1, SCNNMLEN - 1);
      buf[SCNNMLEN - 1] = '\0';
      strindex = strtol (buf, &p, 10);
      if (*p == '\0' && strindex >= 0)
 {
   strings = _bfd_coff_read_string_table (abfd);
   if (strings == ((void*)0))
     return FALSE;



   strings += strindex;
   name = bfd_alloc (abfd, (bfd_size_type) strlen (strings) + 1);
   if (name == ((void*)0))
     return FALSE;
   strcpy (name, strings);
 }
    }

  if (name == ((void*)0))
    {

      name = bfd_alloc (abfd, (bfd_size_type) sizeof (hdr->s_name) + 1);
      if (name == ((void*)0))
 return FALSE;
      strncpy (name, (char *) &hdr->s_name[0], sizeof (hdr->s_name));
      name[sizeof (hdr->s_name)] = 0;
    }

  return_section = bfd_make_section_anyway (abfd, name);
  if (return_section == ((void*)0))
    return FALSE;

  return_section->vma = hdr->s_vaddr;
  return_section->lma = hdr->s_paddr;
  return_section->size = hdr->s_size;
  return_section->filepos = hdr->s_scnptr;
  return_section->rel_filepos = hdr->s_relptr;
  return_section->reloc_count = hdr->s_nreloc;

  bfd_coff_set_alignment_hook (abfd, return_section, hdr);

  return_section->line_filepos = hdr->s_lnnoptr;

  return_section->lineno_count = hdr->s_nlnno;
  return_section->userdata = ((void*)0);
  return_section->next = ((void*)0);
  return_section->target_index = target_index;

  if (! bfd_coff_styp_to_sec_flags_hook (abfd, hdr, name, return_section,
      & flags))
    result = FALSE;

  return_section->flags = flags;



  if ((return_section->flags & SEC_COFF_SHARED_LIBRARY) != 0)
    return_section->lineno_count = 0;

  if (hdr->s_nreloc != 0)
    return_section->flags |= SEC_RELOC;

  if (hdr->s_scnptr != 0)
    return_section->flags |= SEC_HAS_CONTENTS;

  return result;
}
