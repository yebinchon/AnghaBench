#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {unsigned long ld_need; } ;
struct sunos_dynamic_info {int dynsym_count; char* dynstr; TYPE_2__ dyninfo; struct external_nlist* dynsym; } ;
struct external_nlist {int dummy; } ;
struct bfd_link_needed_list {char* name; struct bfd_link_needed_list* next; TYPE_3__* by; } ;
struct bfd_link_info {TYPE_1__* hash; scalar_t__ relocatable; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int bfd_size_type ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_24__ {scalar_t__ xvec; int flags; TYPE_4__* sections; } ;
typedef  TYPE_3__ bfd ;
struct TYPE_25__ {int flags; struct TYPE_25__* next; } ;
typedef  TYPE_4__ asection ;
struct TYPE_26__ {struct bfd_link_needed_list* needed; TYPE_3__* dynobj; } ;
struct TYPE_22__ {scalar_t__ creator; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (TYPE_3__*,int) ; 
 int FUNC1 (char*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*) ; 
 unsigned long FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,char*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,char*,int) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,struct bfd_link_info*,int) ; 
 TYPE_6__* FUNC19 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 

__attribute__((used)) static bfd_boolean
FUNC21 (bfd *abfd,
			   struct bfd_link_info *info,
			   struct external_nlist **symsp,
			   bfd_size_type *sym_countp,
			   char **stringsp)
{
  bfd *dynobj;
  struct sunos_dynamic_info *dinfo;
  unsigned long need;

  /* Make sure we have all the required sections.  */
  if (info->hash->creator == abfd->xvec)
    {
      if (! FUNC18 (abfd, info,
					   ((abfd->flags & DYNAMIC) != 0
					    && !info->relocatable)))
	return FALSE;
    }

  /* There is nothing else to do for a normal object.  */
  if ((abfd->flags & DYNAMIC) == 0)
    return TRUE;

  dynobj = FUNC19 (info)->dynobj;

  /* We do not want to include the sections in a dynamic object in the
     output file.  We hack by simply clobbering the list of sections
     in the BFD.  This could be handled more cleanly by, say, a new
     section flag; the existing SEC_NEVER_LOAD flag is not the one we
     want, because that one still implies that the section takes up
     space in the output file.  If this is the first object we have
     seen, we must preserve the dynamic sections we just created.  */
  if (abfd != dynobj)
    abfd->sections = NULL;
  else
    {
      asection *s;

      for (s = abfd->sections; s != NULL; s = s->next)
	{
	  if ((s->flags & SEC_LINKER_CREATED) == 0)
	    FUNC8 (abfd, s);
	}
    }

  /* The native linker seems to just ignore dynamic objects when -r is
     used.  */
  if (info->relocatable)
    return TRUE;

  /* There's no hope of using a dynamic object which does not exactly
     match the format of the output file.  */
  if (info->hash->creator != abfd->xvec)
    {
      FUNC10 (bfd_error_invalid_operation);
      return FALSE;
    }

  /* Make sure we have a .need and a .rules sections.  These are only
     needed if there really is a dynamic object in the link, so they
     are not added by sunos_create_dynamic_sections.  */
  if (FUNC4 (dynobj, ".need") == NULL)
    {
      /* The .need section holds the list of names of shared objets
	 which must be included at runtime.  The address of this
	 section is put in the ld_need field.  */
      flagword flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS
			| SEC_IN_MEMORY | SEC_READONLY);
      asection *s = FUNC5 (dynobj, ".need", flags);
      if (s == NULL
	  || ! FUNC11 (dynobj, s, 2))
	return FALSE;
    }

  if (FUNC4 (dynobj, ".rules") == NULL)
    {
      /* The .rules section holds the path to search for shared
	 objects.  The address of this section is put in the ld_rules
	 field.  */
      flagword flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS
			| SEC_IN_MEMORY | SEC_READONLY);
      asection *s = FUNC5 (dynobj, ".rules", flags);
      if (s == NULL
	  || ! FUNC11 (dynobj, s, 2))
	return FALSE;
    }

  /* Pick up the dynamic symbols and return them to the caller.  */
  if (! FUNC20 (abfd))
    return FALSE;

  dinfo = (struct sunos_dynamic_info *) FUNC13 (abfd);
  *symsp = dinfo->dynsym;
  *sym_countp = dinfo->dynsym_count;
  *stringsp = dinfo->dynstr;

  /* Record information about any other objects needed by this one.  */
  need = dinfo->dyninfo.ld_need;
  while (need != 0)
    {
      bfd_byte buf[16];
      unsigned long name, flags;
      unsigned short major_vno, minor_vno;
      struct bfd_link_needed_list *needed, **pp;
      char *namebuf, *p;
      bfd_size_type alc;
      bfd_byte b;
      char *namecopy;

      if (FUNC9 (abfd, (file_ptr) need, SEEK_SET) != 0
	  || FUNC1 (buf, (bfd_size_type) 16, abfd) != 16)
	return FALSE;

      /* For the format of an ld_need entry, see aout/sun4.h.  We
	 should probably define structs for this manipulation.  */
      name = FUNC3 (abfd, buf);
      flags = FUNC3 (abfd, buf + 4);
      major_vno = (unsigned short) FUNC2 (abfd, buf + 8);
      minor_vno = (unsigned short) FUNC2 (abfd, buf + 10);
      need = FUNC3 (abfd, buf + 12);

      alc = sizeof (struct bfd_link_needed_list);
      needed = FUNC0 (abfd, alc);
      if (needed == NULL)
	return FALSE;
      needed->by = abfd;

      /* We return the name as [-l]name[.maj][.min].  */
      alc = 30;
      namebuf = FUNC6 (alc + 1);
      if (namebuf == NULL)
	return FALSE;
      p = namebuf;

      if ((flags & 0x80000000) != 0)
	{
	  *p++ = '-';
	  *p++ = 'l';
	}
      if (FUNC9 (abfd, (file_ptr) name, SEEK_SET) != 0)
	{
	  FUNC12 (namebuf);
	  return FALSE;
	}

      do
	{
	  if (FUNC1 (&b, (bfd_size_type) 1, abfd) != 1)
	    {
	      FUNC12 (namebuf);
	      return FALSE;
	    }

	  if ((bfd_size_type) (p - namebuf) >= alc)
	    {
	      char *n;

	      alc *= 2;
	      n = FUNC7 (namebuf, alc + 1);
	      if (n == NULL)
		{
		  FUNC12 (namebuf);
		  return FALSE;
		}
	      p = n + (p - namebuf);
	      namebuf = n;
	    }

	  *p++ = b;
	}
      while (b != '\0');

      if (major_vno == 0)
	*p = '\0';
      else
	{
	  char majbuf[30];
	  char minbuf[30];

	  FUNC14 (majbuf, ".%d", major_vno);
	  if (minor_vno == 0)
	    minbuf[0] = '\0';
	  else
	    FUNC14 (minbuf, ".%d", minor_vno);

	  if ((p - namebuf) + FUNC17 (majbuf) + FUNC17 (minbuf) >= alc)
	    {
	      char *n;

	      alc = (p - namebuf) + FUNC17 (majbuf) + FUNC17 (minbuf);
	      n = FUNC7 (namebuf, alc + 1);
	      if (n == NULL)
		{
		  FUNC12 (namebuf);
		  return FALSE;
		}
	      p = n + (p - namebuf);
	      namebuf = n;
	    }

	  FUNC16 (p, majbuf);
	  FUNC15 (p, minbuf);
	}

      namecopy = FUNC0 (abfd, (bfd_size_type) FUNC17 (namebuf) + 1);
      if (namecopy == NULL)
	{
	  FUNC12 (namebuf);
	  return FALSE;
	}
      FUNC16 (namecopy, namebuf);
      FUNC12 (namebuf);
      needed->name = namecopy;

      needed->next = NULL;

      for (pp = &FUNC19 (info)->needed;
	   *pp != NULL;
	   pp = &(*pp)->next)
	;
      *pp = needed;
    }

  return TRUE;
}