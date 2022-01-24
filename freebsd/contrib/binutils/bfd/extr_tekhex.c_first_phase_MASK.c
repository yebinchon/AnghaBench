#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int flags; void* value; TYPE_6__* section; void* name; TYPE_5__* the_bfd; } ;
struct TYPE_18__ {TYPE_3__ symbol; struct TYPE_18__* prev; } ;
typedef  TYPE_4__ tekhex_symbol_type ;
typedef  void* bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_16__ {TYPE_1__* tekhex_data; } ;
struct TYPE_19__ {TYPE_2__ tdata; int /*<<< orphan*/  flags; int /*<<< orphan*/  symcount; } ;
typedef  TYPE_5__ bfd ;
struct TYPE_20__ {void* vma; int flags; void* size; } ;
typedef  TYPE_6__ asection ;
struct TYPE_15__ {TYPE_4__* symbols; } ;

/* Variables and functions */
 int BSF_EXPORT ; 
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HAS_SYMS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__* bfd_abs_section_ptr ; 
 void* FUNC1 (TYPE_5__*,int) ; 
 TYPE_6__* FUNC2 (TYPE_5__*,char*) ; 
 TYPE_6__* FUNC3 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char**,void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (bfd *abfd, int type, char *src)
{
  asection *section = bfd_abs_section_ptr;
  unsigned int len;
  bfd_vma val;
  char sym[17];			/* A symbol can only be 16chars long.  */

  switch (type)
    {
    case '6':
      /* Data record - read it and store it.  */
      {
	bfd_vma addr;

	if (!FUNC5 (&src, &addr))
	  return FALSE;

	while (*src)
	  {
	    FUNC6 (abfd, FUNC0 (src), addr);
	    src += 2;
	    addr++;
	  }
      }

      return TRUE;
    case '3':
      /* Symbol record, read the segment.  */
      if (!FUNC4 (sym, &src, &len))
	return FALSE;
      section = FUNC2 (abfd, sym);
      if (section == NULL)
	{
	  char *n = FUNC1 (abfd, (bfd_size_type) len + 1);

	  if (!n)
	    return FALSE;
	  FUNC7 (n, sym, len + 1);
	  section = FUNC3 (abfd, n);
	}
      while (*src)
	{
	  switch (*src)
	    {
	    case '1':		/* Section range.  */
	      src++;
	      if (!FUNC5 (&src, &section->vma))
		return FALSE;
	      if (!FUNC5 (&src, &val))
		return FALSE;
	      section->size = val - section->vma;
	      section->flags = SEC_HAS_CONTENTS | SEC_LOAD | SEC_ALLOC;
	      break;
	    case '0':
	    case '2':
	    case '3':
	    case '4':
	    case '6':
	    case '7':
	    case '8':
	      /* Symbols, add to section.  */
	      {
		bfd_size_type amt = sizeof (tekhex_symbol_type);
		tekhex_symbol_type *new = FUNC1 (abfd, amt);
		char stype = (*src);

		if (!new)
		  return FALSE;
		new->symbol.the_bfd = abfd;
		src++;
		abfd->symcount++;
		abfd->flags |= HAS_SYMS;
		new->prev = abfd->tdata.tekhex_data->symbols;
		abfd->tdata.tekhex_data->symbols = new;
		if (!FUNC4 (sym, &src, &len))
		  return FALSE;
		new->symbol.name = FUNC1 (abfd, (bfd_size_type) len + 1);
		if (!new->symbol.name)
		  return FALSE;
		FUNC7 ((char *) (new->symbol.name), sym, len + 1);
		new->symbol.section = section;
		if (stype <= '4')
		  new->symbol.flags = (BSF_GLOBAL | BSF_EXPORT);
		else
		  new->symbol.flags = BSF_LOCAL;
		if (!FUNC5 (&src, &val))
		  return FALSE;
		new->symbol.value = val - section->vma;
		break;
	      }
	    default:
	      return FALSE;
	    }
	}
    }

  return TRUE;
}