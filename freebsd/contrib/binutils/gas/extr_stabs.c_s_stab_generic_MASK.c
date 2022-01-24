#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  subsegT ;
typedef  int /*<<< orphan*/  segT ;
typedef  int /*<<< orphan*/  fragS ;
struct TYPE_6__ {scalar_t__ X_add_number; int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;
struct TYPE_8__ {char* next_free; } ;
struct TYPE_7__ {int hadone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  N_SLINE 130 
#define  N_SO 129 
#define  N_SOL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  O_symbol ; 
 int SEC_DEBUGGING ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 scalar_t__ SEPARATE_STAB_SECTIONS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/ * frag_now ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 () ; 
 char FUNC15 (long*) ; 
 unsigned int FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* input_line_pointer ; 
 scalar_t__ listing ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ notes ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC28 (char*) ; 

__attribute__((used)) static void
FUNC29 (int what, char *stab_secname, char *stabstr_secname)
{
  long longint;
  char *string, *saved_string_obstack_end;
  int type;
  int other;
  int desc;

  /* The general format is:
     .stabs "STRING",TYPE,OTHER,DESC,VALUE
     .stabn TYPE,OTHER,DESC,VALUE
     .stabd TYPE,OTHER,DESC
     At this point input_line_pointer points after the pseudo-op and
     any trailing whitespace.  The argument what is one of 's', 'n' or
     'd' indicating which type of .stab this is.  */

  if (what != 's')
    {
      string = "";
      saved_string_obstack_end = 0;
    }
  else
    {
      int length;

      string = FUNC8 (&length);
      /* FIXME: We should probably find some other temporary storage
	 for string, rather than leaking memory if someone else
	 happens to use the notes obstack.  */
      saved_string_obstack_end = notes.next_free;
      FUNC2 ();
      if (*input_line_pointer == ',')
	input_line_pointer++;
      else
	{
	  FUNC5 (FUNC3(".stab%c: missing comma"), what);
	  FUNC17 ();
	  return;
	}
    }

  if (FUNC15 (&longint) != ',')
    {
      FUNC5 (FUNC3(".stab%c: missing comma"), what);
      FUNC17 ();
      return;
    }
  type = longint;

  if (FUNC15 (&longint) != ',')
    {
      FUNC5 (FUNC3(".stab%c: missing comma"), what);
      FUNC17 ();
      return;
    }
  other = longint;

  desc = FUNC14 ();

  if ((desc > 0xffff) || (desc < -0x8000))
    /* This could happen for example with a source file with a huge
       number of lines.  The only cure is to use a different debug
       format, probably DWARF.  */
    FUNC5 (FUNC3(".stab%c: description field '%x' too big, try a different debug format"),
	     what, desc);

  if (what == 's' || what == 'n')
    {
      if (*input_line_pointer != ',')
	{
	  FUNC5 (FUNC3(".stab%c: missing comma"), what);
	  FUNC17 ();
	  return;
	}
      input_line_pointer++;
      FUNC2 ();
    }

#ifdef TC_PPC
#ifdef OBJ_ELF
  /* Solaris on PowerPC has decided that .stabd can take 4 arguments, so if we were
     given 4 arguments, make it a .stabn */
  else if (what == 'd')
    {
      char *save_location = input_line_pointer;

      SKIP_WHITESPACE ();
      if (*input_line_pointer == ',')
	{
	  input_line_pointer++;
	  what = 'n';
	}
      else
	input_line_pointer = save_location;
    }
#endif /* OBJ_ELF */
#endif /* TC_PPC */

#ifndef NO_LISTING
  if (listing)
    {
      switch (type)
	{
	case N_SLINE:
	  FUNC19 ((unsigned int) desc);
	  break;
	case N_SO:
	case N_SOL:
	  FUNC18 (string);
	  break;
	}
    }
#endif /* ! NO_LISTING */

  /* We have now gathered the type, other, and desc information.  For
     .stabs or .stabn, input_line_pointer is now pointing at the
     value.  */

  if (SEPARATE_STAB_SECTIONS)
    /* Output the stab information in a separate section.  This is used
       at least for COFF and ELF.  */
    {
      segT saved_seg = now_seg;
      subsegT saved_subseg = now_subseg;
      fragS *saved_frag = frag_now;
      valueT dot;
      segT seg;
      unsigned int stroff;
      char *p;

      static segT cached_sec;
      static char *cached_secname;

      dot = FUNC12 ();

#ifdef md_flush_pending_output
      md_flush_pending_output ();
#endif

      if (cached_secname && !FUNC24 (cached_secname, stab_secname))
	{
	  seg = cached_sec;
	  FUNC26 (seg, 0);
	}
      else
	{
	  seg = FUNC25 (stab_secname, 0);
	  if (cached_secname)
	    FUNC13 (cached_secname);
	  cached_secname = FUNC28 (stab_secname);
	  cached_sec = seg;
	}

      if (! FUNC23 (seg)->hadone)
	{
	  FUNC6 (stdoutput, seg,
				 SEC_READONLY | SEC_RELOC | SEC_DEBUGGING);
#ifdef INIT_STAB_SECTION
	  INIT_STAB_SECTION (seg);
#endif
	  FUNC23 (seg)->hadone = 1;
	}

      stroff = FUNC16 (string, stabstr_secname);
      if (what == 's')
	{
	  /* Release the string, if nobody else has used the obstack.  */
	  if (saved_string_obstack_end == notes.next_free)
	    FUNC22 (&notes, string);
	}

      /* At least for now, stabs in a special stab section are always
	 output as 12 byte blocks of information.  */
      p = FUNC11 (8);
      FUNC21 (p, (valueT) stroff, 4);
      FUNC21 (p + 4, (valueT) type, 1);
      FUNC21 (p + 5, (valueT) other, 1);
      FUNC21 (p + 6, (valueT) desc, 2);

      if (what == 's' || what == 'n')
	{
	  /* Pick up the value from the input line.  */
	  FUNC7 (4);
	  input_line_pointer--;
	}
      else
	{
	  symbolS *symbol;
	  expressionS exp;

	  /* Arrange for a value representing the current location.  */
	  symbol = FUNC27 (saved_seg, dot, saved_frag);

	  exp.X_op = O_symbol;
	  exp.X_add_symbol = symbol;
	  exp.X_add_number = 0;

	  FUNC10 (&exp, 4);
	}

#ifdef OBJ_PROCESS_STAB
      OBJ_PROCESS_STAB (seg, what, string, type, other, desc);
#endif

      FUNC26 (saved_seg, saved_subseg);
    }
  else
    {
#ifdef OBJ_PROCESS_STAB
      OBJ_PROCESS_STAB (0, what, string, type, other, desc);
#else
      FUNC4 ();
#endif
    }

  FUNC9 ();
}