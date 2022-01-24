#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int valueT ;
typedef  scalar_t__ segT ;
struct TYPE_17__ {int fr_address; } ;
typedef  TYPE_1__ fragS ;
struct TYPE_18__ {int fx_offset; int fx_pcrel; int fx_dot_value; int fx_size; int fx_where; int /*<<< orphan*/  fx_line; int /*<<< orphan*/  fx_file; scalar_t__ fx_signed; int /*<<< orphan*/  fx_no_overflow; int /*<<< orphan*/  fx_bit_fixP; int /*<<< orphan*/ * fx_subsy; int /*<<< orphan*/ * fx_addsy; int /*<<< orphan*/  fx_done; TYPE_1__* fx_frag; struct TYPE_18__* fx_next; } ;
typedef  TYPE_2__ fixS ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIBUTE_UNUSED_LABEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * abs_section_sym ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  flag_signed_overflow_ok ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ linkrelax ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  skip ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ undefined_section ; 

__attribute__((used)) static long
FUNC27 (fixS *fixP, segT this_segment)
{
  long seg_reloc_count = 0;
  valueT add_number;
  fragS *fragP;
  segT add_symbol_segment = absolute_section;

  if (fixP != NULL && abs_section_sym == NULL)
    abs_section_sym = FUNC22 (absolute_section);

  /* If the linker is doing the relaxing, we must not do any fixups.

     Well, strictly speaking that's not true -- we could do any that
     are PC-relative and don't cross regions that could change size.
     And for the i960 we might be able to turn callx/callj into bal
     anyways in cases where we know the maximum displacement.  */
  if (linkrelax && FUNC11 (this_segment))
    {
      for (; fixP; fixP = fixP->fx_next)
	if (!fixP->fx_done)
	  {
	    if (fixP->fx_addsy == NULL)
	      {
		/* There was no symbol required by this relocation.
		   However, BFD doesn't really handle relocations
		   without symbols well. So fake up a local symbol in
		   the absolute section.  */
		fixP->fx_addsy = abs_section_sym;
	      }
	    FUNC26 (fixP->fx_addsy);
	    if (fixP->fx_subsy != NULL)
	      FUNC26 (fixP->fx_subsy);
	    seg_reloc_count++;
	  }
      FUNC5 (fixP, seg_reloc_count);
      return seg_reloc_count;
    }

  for (; fixP; fixP = fixP->fx_next)
    {
#ifdef DEBUG5
      fprintf (stderr, "\nprocessing fixup:\n");
      print_fixup (fixP);
#endif

      fragP = fixP->fx_frag;
      FUNC18 (fragP);
#ifdef TC_VALIDATE_FIX
      TC_VALIDATE_FIX (fixP, this_segment, skip);
#endif
      add_number = fixP->fx_offset;

      if (fixP->fx_addsy != NULL)
	add_symbol_segment = FUNC3 (fixP->fx_addsy);

      if (fixP->fx_subsy != NULL)
	{
	  segT sub_symbol_segment;
	  FUNC21 (fixP->fx_subsy);
	  sub_symbol_segment = FUNC3 (fixP->fx_subsy);
	  if (fixP->fx_addsy != NULL
	      && sub_symbol_segment == add_symbol_segment
	      && !FUNC10 (fixP, add_symbol_segment))
	    {
	      add_number += FUNC4 (fixP->fx_addsy);
	      add_number -= FUNC4 (fixP->fx_subsy);
	      fixP->fx_offset = add_number;
	      fixP->fx_addsy = NULL;
	      fixP->fx_subsy = NULL;
#ifdef TC_M68K
	      /* See the comment below about 68k weirdness.  */
	      fixP->fx_pcrel = 0;
#endif
	    }
	  else if (sub_symbol_segment == absolute_section
		   && !FUNC8 (fixP))
	    {
	      add_number -= FUNC4 (fixP->fx_subsy);
	      fixP->fx_offset = add_number;
	      fixP->fx_subsy = NULL;
	    }
	  else if (sub_symbol_segment == this_segment
		   && !FUNC9 (fixP))
	    {
	      add_number -= FUNC4 (fixP->fx_subsy);
	      fixP->fx_offset = (add_number + fixP->fx_dot_value
				 + fixP->fx_frag->fr_address);

	      /* Make it pc-relative.  If the back-end code has not
		 selected a pc-relative reloc, cancel the adjustment
		 we do later on all pc-relative relocs.  */
	      if (0
#ifdef TC_M68K
		  /* Do this for m68k even if it's already described
		     as pc-relative.  On the m68k, an operand of
		     "pc@(foo-.-2)" should address "foo" in a
		     pc-relative mode.  */
		  || 1
#endif
		  || !fixP->fx_pcrel)
		add_number += FUNC1 (fixP, this_segment);
	      fixP->fx_subsy = NULL;
	      fixP->fx_pcrel = 1;
	    }
	  else if (!FUNC13 (fixP))
	    {
	      FUNC15 (fixP->fx_file, fixP->fx_line,
			    FUNC14("can't resolve `%s' {%s section} - `%s' {%s section}"),
			    fixP->fx_addsy ? FUNC2 (fixP->fx_addsy) : "0",
			    FUNC23 (add_symbol_segment),
			    FUNC2 (fixP->fx_subsy),
			    FUNC23 (sub_symbol_segment));
	    }
	}

      if (fixP->fx_addsy)
	{
	  if (add_symbol_segment == this_segment
	      && !FUNC7 (fixP))
	    {
	      /* This fixup was made when the symbol's segment was
		 SEG_UNKNOWN, but it is now in the local segment.
		 So we know how to do the address without relocation.  */
	      add_number += FUNC4 (fixP->fx_addsy);
	      fixP->fx_offset = add_number;
	      if (fixP->fx_pcrel)
		add_number -= FUNC1 (fixP, this_segment);
	      fixP->fx_addsy = NULL;
	      fixP->fx_pcrel = 0;
	    }
	  else if (add_symbol_segment == absolute_section
		   && !FUNC6 (fixP))
	    {
	      add_number += FUNC4 (fixP->fx_addsy);
	      fixP->fx_offset = add_number;
	      fixP->fx_addsy = NULL;
	    }
	  else if (add_symbol_segment != undefined_section
		   && ! FUNC16 (add_symbol_segment)
		   && FUNC0 (fixP))
	    add_number += FUNC4 (fixP->fx_addsy);
	}

      if (fixP->fx_pcrel)
	{
	  add_number -= FUNC1 (fixP, this_segment);
	  if (!fixP->fx_done && fixP->fx_addsy == NULL)
	    {
	      /* There was no symbol required by this relocation.
		 However, BFD doesn't really handle relocations
		 without symbols well. So fake up a local symbol in
		 the absolute section.  */
	      fixP->fx_addsy = abs_section_sym;
	    }
	}

      if (!fixP->fx_done)
	FUNC19 (fixP, &add_number, this_segment);

      if (!fixP->fx_done)
	{
	  ++seg_reloc_count;
	  if (fixP->fx_addsy == NULL)
	    fixP->fx_addsy = abs_section_sym;
	  FUNC26 (fixP->fx_addsy);
	  if (fixP->fx_subsy != NULL)
	    FUNC26 (fixP->fx_subsy);
	}

      if (!fixP->fx_bit_fixP && !fixP->fx_no_overflow && fixP->fx_size != 0)
	{
	  if (fixP->fx_size < sizeof (valueT))
	    {
	      valueT mask;

	      mask = 0;
	      mask--;		/* Set all bits to one.  */
	      mask <<= fixP->fx_size * 8 - (fixP->fx_signed ? 1 : 0);
	      if ((add_number & mask) != 0 && (add_number & mask) != mask)
		{
		  char buf[50], buf2[50];
		  FUNC24 (buf, fragP->fr_address + fixP->fx_where);
		  if (add_number > 1000)
		    FUNC24 (buf2, add_number);
		  else
		    FUNC25 (buf2, "%ld", (long) add_number);
		  FUNC15 (fixP->fx_file, fixP->fx_line,
				FUNC14("value of %s too large for field of %d bytes at %s"),
				buf2, fixP->fx_size, buf);
		} /* Generic error checking.  */
	    }
#ifdef WARN_SIGNED_OVERFLOW_WORD
	  /* Warn if a .word value is too large when treated as a signed
	     number.  We already know it is not too negative.  This is to
	     catch over-large switches generated by gcc on the 68k.  */
	  if (!flag_signed_overflow_ok
	      && fixP->fx_size == 2
	      && add_number > 0x7fff)
	    as_bad_where (fixP->fx_file, fixP->fx_line,
			  _("signed .word overflow; switch may be too large; %ld at 0x%lx"),
			  (long) add_number,
			  (long) (fragP->fr_address + fixP->fx_where));
#endif
	}			/* Not a bit fix.  */

#ifdef TC_VALIDATE_FIX
    skip:  ATTRIBUTE_UNUSED_LABEL
      ;
#endif
#ifdef DEBUG5
      fprintf (stderr, "result:\n");
      print_fixup (fixP);
#endif
    }				/* For each fixS in this segment.  */

  FUNC5 (fixP, seg_reloc_count);
  return seg_reloc_count;
}