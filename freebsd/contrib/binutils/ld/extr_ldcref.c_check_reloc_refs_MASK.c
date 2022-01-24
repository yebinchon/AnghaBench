#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct lang_nocrossref {char const* name; struct lang_nocrossref* next; } ;
struct check_refs_info {char* sym_name; TYPE_7__* defsec; int /*<<< orphan*/  asymbols; scalar_t__ global; TYPE_1__* ncrs; } ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_18__ {int /*<<< orphan*/  owner; struct TYPE_18__* output_section; } ;
typedef  TYPE_2__ asection ;
struct TYPE_19__ {TYPE_11__** sym_ptr_ptr; int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_20__ {TYPE_2__* output_section; } ;
struct TYPE_17__ {struct lang_nocrossref* list; } ;
struct TYPE_16__ {int flags; } ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int BSF_SECTION_SYM ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (TYPE_11__*) ; 
 long FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__**,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_7__* FUNC4 (TYPE_11__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_7__*) ; 
 scalar_t__ FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 TYPE_3__** FUNC11 (long) ; 

__attribute__((used)) static void
FUNC12 (bfd *abfd, asection *sec, void *iarg)
{
  struct check_refs_info *info = iarg;
  asection *outsec;
  const char *outsecname;
  asection *outdefsec;
  const char *outdefsecname;
  struct lang_nocrossref *ncr;
  const char *symname;
  bfd_boolean global;
  long relsize;
  arelent **relpp;
  long relcount;
  arelent **p, **pend;

  outsec = sec->output_section;
  outsecname = FUNC5 (outsec->owner, outsec);

  outdefsec = info->defsec->output_section;
  outdefsecname = FUNC5 (outdefsec->owner, outdefsec);

  /* The section where the symbol is defined is permitted.  */
  if (FUNC10 (outsecname, outdefsecname) == 0)
    return;

  for (ncr = info->ncrs->list; ncr != NULL; ncr = ncr->next)
    if (FUNC10 (outsecname, ncr->name) == 0)
      break;

  if (ncr == NULL)
    return;

  /* This section is one for which cross references are prohibited.
     Look through the relocations, and see if any of them are to
     INFO->SYM_NAME.  If INFO->SYMNAME is NULL, check for relocations
     against the section symbol.  If INFO->GLOBAL is TRUE, the
     definition is global, check for relocations against the global
     symbols.  Otherwise check for relocations against the local and
     section symbols.  */

  symname = info->sym_name;
  global = info->global;

  relsize = FUNC3 (abfd, sec);
  if (relsize < 0)
    FUNC8 (FUNC0("%B%F: could not read relocs: %E\n"), abfd);
  if (relsize == 0)
    return;

  relpp = FUNC11 (relsize);
  relcount = FUNC2 (abfd, sec, relpp, info->asymbols);
  if (relcount < 0)
    FUNC8 (FUNC0("%B%F: could not read relocs: %E\n"), abfd);

  p = relpp;
  pend = p + relcount;
  for (; p < pend && *p != NULL; p++)
    {
      arelent *q = *p;

      if (q->sym_ptr_ptr != NULL
	  && *q->sym_ptr_ptr != NULL
	  && ((global
	       && (FUNC7 (FUNC4 (*q->sym_ptr_ptr))
		   || FUNC6 (FUNC4 (*q->sym_ptr_ptr))
		   || ((*q->sym_ptr_ptr)->flags & (BSF_GLOBAL
						   | BSF_WEAK)) != 0))
	      || (!global
		  && ((*q->sym_ptr_ptr)->flags & (BSF_LOCAL
						  | BSF_SECTION_SYM)) != 0
		  && FUNC4 (*q->sym_ptr_ptr) == info->defsec))
	  && (symname != NULL
	      ? FUNC10 (FUNC1 (*q->sym_ptr_ptr), symname) == 0
	      : ((*q->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0))
	{
	  /* We found a reloc for the symbol.  The symbol is defined
	     in OUTSECNAME.  This reloc is from a section which is
	     mapped into a section from which references to OUTSECNAME
	     are prohibited.  We must report an error.  */
	  FUNC8 (FUNC0("%X%C: prohibited cross reference from %s to `%T' in %s\n"),
		 abfd, sec, q->address, outsecname,
		 FUNC1 (*q->sym_ptr_ptr), outdefsecname);
	}
    }

  FUNC9 (relpp);
}