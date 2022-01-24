#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ _l_zeroes; int _l_offset; } ;
struct TYPE_22__ {int /*<<< orphan*/  _l_name; TYPE_1__ _l_l; } ;
struct internal_ldsym {scalar_t__ l_smclas; int l_smtype; scalar_t__ l_value; int /*<<< orphan*/  l_scnum; TYPE_2__ _l; } ;
struct internal_ldhdr {int l_stoff; int l_nsyms; } ;
struct TYPE_23__ {char const* name; int /*<<< orphan*/  flags; TYPE_7__* section; scalar_t__ value; TYPE_5__* the_bfd; } ;
struct TYPE_24__ {TYPE_3__ symbol; } ;
typedef  TYPE_4__ coff_symbol_type ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_25__ {int flags; } ;
typedef  TYPE_5__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_27__ {int /*<<< orphan*/  keep_contents; int /*<<< orphan*/ * contents; } ;
struct TYPE_26__ {scalar_t__ vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  BSF_NO_FLAGS ; 
 int DYNAMIC ; 
 int L_EXPORT ; 
 size_t SYMNMLEN ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XMC_XO ; 
 TYPE_7__* bfd_abs_section_ptr ; 
 char* FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,struct internal_ldsym*) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int) ; 
 TYPE_9__* FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 

long
FUNC12 (bfd *abfd, asymbol **psyms)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  const char *strings;
  bfd_byte *elsym, *elsymend;
  coff_symbol_type *symbuf;

  if ((abfd->flags & DYNAMIC) == 0)
    {
      FUNC2 (bfd_error_invalid_operation);
      return -1;
    }

  lsec = FUNC1 (abfd, ".loader");
  if (lsec == NULL)
    {
      FUNC2 (bfd_error_no_symbols);
      return -1;
    }

  if (! FUNC11 (abfd, lsec))
    return -1;
  contents = FUNC8 (abfd, lsec)->contents;

  FUNC8 (abfd, lsec)->keep_contents = TRUE;

  FUNC5 (abfd, contents, &ldhdr);

  strings = (char *) contents + ldhdr.l_stoff;

  symbuf = FUNC7 (abfd, ldhdr.l_nsyms * sizeof (* symbuf));
  if (symbuf == NULL)
    return -1;

  elsym = contents + FUNC4(abfd, &ldhdr);

  elsymend = elsym + ldhdr.l_nsyms * FUNC3(abfd);
  for (; elsym < elsymend; elsym += FUNC3(abfd), symbuf++, psyms++)
    {
      struct internal_ldsym ldsym;

      FUNC6 (abfd, elsym, &ldsym);

      symbuf->symbol.the_bfd = abfd;

      if (ldsym._l._l_l._l_zeroes == 0)
	symbuf->symbol.name = strings + ldsym._l._l_l._l_offset;
      else
	{
	  char *c;

	  c = FUNC0 (abfd, (bfd_size_type) SYMNMLEN + 1);
	  if (c == NULL)
	    return -1;
	  FUNC10 (c, ldsym._l._l_name, SYMNMLEN);
	  c[SYMNMLEN] = '\0';
	  symbuf->symbol.name = c;
	}

      if (ldsym.l_smclas == XMC_XO)
	symbuf->symbol.section = bfd_abs_section_ptr;
      else
	symbuf->symbol.section = FUNC9 (abfd,
							      ldsym.l_scnum);
      symbuf->symbol.value = ldsym.l_value - symbuf->symbol.section->vma;

      symbuf->symbol.flags = BSF_NO_FLAGS;
      if ((ldsym.l_smtype & L_EXPORT) != 0)
	symbuf->symbol.flags |= BSF_GLOBAL;

      /* FIXME: We have no way to record the other information stored
	 with the loader symbol.  */
      *psyms = (asymbol *) symbuf;
    }

  *psyms = NULL;

  return ldhdr.l_nsyms;
}