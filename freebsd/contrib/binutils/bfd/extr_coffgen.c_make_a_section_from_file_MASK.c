#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct internal_scnhdr {char* s_name; scalar_t__ s_scnptr; scalar_t__ s_nreloc; scalar_t__ s_nlnno; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; } ;
typedef  int flagword ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {scalar_t__ filepos; scalar_t__ reloc_count; unsigned int target_index; int flags; scalar_t__ lineno_count; int /*<<< orphan*/ * next; int /*<<< orphan*/ * userdata; int /*<<< orphan*/  line_filepos; int /*<<< orphan*/  rel_filepos; int /*<<< orphan*/  size; int /*<<< orphan*/  lma; int /*<<< orphan*/  vma; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SCNNMLEN ; 
 int SEC_COFF_SHARED_LIBRARY ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_RELOC ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct internal_scnhdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct internal_scnhdr*,char*,TYPE_1__*,int*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 long FUNC10 (char*,char**,int) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (bfd *abfd,
			  struct internal_scnhdr *hdr,
			  unsigned int target_index)
{
  asection *return_section;
  char *name;
  bfd_boolean result = TRUE;
  flagword flags;

  name = NULL;

  /* Handle long section names as in PE.  */
  if (FUNC2 (abfd)
      && hdr->s_name[0] == '/')
    {
      char buf[SCNNMLEN];
      long strindex;
      char *p;
      const char *strings;

      FUNC6 (buf, hdr->s_name + 1, SCNNMLEN - 1);
      buf[SCNNMLEN - 1] = '\0';
      strindex = FUNC10 (buf, &p, 10);
      if (*p == '\0' && strindex >= 0)
	{
	  strings = FUNC0 (abfd);
	  if (strings == NULL)
	    return FALSE;
	  /* FIXME: For extra safety, we should make sure that
             strindex does not run us past the end, but right now we
             don't know the length of the string table.  */
	  strings += strindex;
	  name = FUNC1 (abfd, (bfd_size_type) FUNC8 (strings) + 1);
	  if (name == NULL)
	    return FALSE;
	  FUNC7 (name, strings);
	}
    }

  if (name == NULL)
    {
      /* Assorted wastage to null-terminate the name, thanks AT&T! */
      name = FUNC1 (abfd, (bfd_size_type) sizeof (hdr->s_name) + 1);
      if (name == NULL)
	return FALSE;
      FUNC9 (name, (char *) &hdr->s_name[0], sizeof (hdr->s_name));
      name[sizeof (hdr->s_name)] = 0;
    }

  return_section = FUNC5 (abfd, name);
  if (return_section == NULL)
    return FALSE;

  return_section->vma = hdr->s_vaddr;
  return_section->lma = hdr->s_paddr;
  return_section->size = hdr->s_size;
  return_section->filepos = hdr->s_scnptr;
  return_section->rel_filepos = hdr->s_relptr;
  return_section->reloc_count = hdr->s_nreloc;

  FUNC3 (abfd, return_section, hdr);

  return_section->line_filepos = hdr->s_lnnoptr;

  return_section->lineno_count = hdr->s_nlnno;
  return_section->userdata = NULL;
  return_section->next = NULL;
  return_section->target_index = target_index;

  if (! FUNC4 (abfd, hdr, name, return_section,
					 & flags))
    result = FALSE;

  return_section->flags = flags;

  /* At least on i386-coff, the line number count for a shared library
     section must be ignored.  */
  if ((return_section->flags & SEC_COFF_SHARED_LIBRARY) != 0)
    return_section->lineno_count = 0;

  if (hdr->s_nreloc != 0)
    return_section->flags |= SEC_RELOC;
  /* FIXME: should this check 'hdr->s_size > 0'.  */
  if (hdr->s_scnptr != 0)
    return_section->flags |= SEC_HAS_CONTENTS;

  return result;
}