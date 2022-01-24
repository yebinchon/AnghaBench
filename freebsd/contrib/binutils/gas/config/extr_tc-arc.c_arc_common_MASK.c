#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
struct TYPE_19__ {int local; TYPE_1__* bsym; TYPE_3__* sy_frag; } ;
typedef  TYPE_2__ symbolS ;
typedef  scalar_t__ segT ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  int /*<<< orphan*/  offsetT ;
struct TYPE_20__ {int /*<<< orphan*/ * fr_symbol; } ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_OBJECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ bfd_com_section_ptr ; 
 scalar_t__ bss_section ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* frag_now ; 
 char* FUNC17 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC18 () ; 
 char FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 char* input_line_pointer ; 
 scalar_t__ now_seg ; 
 int now_subseg ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  rs_org ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 TYPE_2__* FUNC23 (char*) ; 
 TYPE_3__ zero_address_frag ; 

__attribute__((used)) static void
FUNC24 (int localScope)
{
  char *name;
  char c;
  char *p;
  int align, size;
  symbolS *symbolP;

  name = input_line_pointer;
  c = FUNC19 ();
  /* just after name is now '\0'  */
  p = input_line_pointer;
  *p = c;
  FUNC0 ();

  if (*input_line_pointer != ',')
    {
      FUNC12 ("expected comma after symbol name");
      FUNC20 ();
      return;
    }

  input_line_pointer++;		/* skip ','  */
  size = FUNC18 ();

  if (size < 0)
    {
      FUNC12 ("negative symbol length");
      FUNC20 ();
      return;
    }

  *p = 0;
  symbolP = FUNC23 (name);
  *p = c;

  if (FUNC6 (symbolP) && ! FUNC5 (symbolP))
    {
      FUNC12 ("ignoring attempt to re-define symbol");
      FUNC20 ();
      return;
    }
  if (((int) FUNC4 (symbolP) != 0) \
      && ((int) FUNC4 (symbolP) != size))
    {
      FUNC13 ("length of symbol \"%s\" already %ld, ignoring %d",
	       FUNC2 (symbolP), (long) FUNC4 (symbolP), size);
    }
  FUNC14 (symbolP->sy_frag == &zero_address_frag);

  /* Now parse the alignment field.  This field is optional for
     local and global symbols. Default alignment is zero.  */
  if (*input_line_pointer == ',')
    {
      input_line_pointer++;
      align = FUNC18 ();
      if (align < 0)
	{
	  align = 0;
	  FUNC13 ("assuming symbol alignment of zero");
	}
    }
  else
    align = 0;

  if (localScope != 0)
    {
      segT old_sec;
      int old_subsec;
      char *pfrag;

      old_sec    = now_seg;
      old_subsec = now_subseg;
      FUNC21 (bss_section, align);
      FUNC22 (bss_section, 0);  /* ??? subseg_set (bss_section, 1); ???  */

      if (align)
	/* Do alignment.  */
	FUNC16 (align, 0, 0);

      /* Detach from old frag.  */
      if (FUNC3 (symbolP) == bss_section)
	symbolP->sy_frag->fr_symbol = NULL;

      symbolP->sy_frag = frag_now;
      pfrag = FUNC17 (rs_org, 1, 1, (relax_substateT) 0, symbolP,
			(offsetT) size, (char *) 0);
      *pfrag = 0;

      FUNC10       (symbolP, size);
      FUNC9    (symbolP, bss_section);
      FUNC1 (symbolP);
      symbolP->local = 1;
      FUNC22 (old_sec, old_subsec);
    }
  else
    {
      FUNC11    (symbolP, (valueT) size);
      FUNC7    (symbolP, align);
      FUNC8 (symbolP);
      FUNC9  (symbolP, bfd_com_section_ptr);
    }

  symbolP->bsym->flags |= BSF_OBJECT;

  FUNC15 ();
}