#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
typedef  int /*<<< orphan*/  symbolS ;
typedef  int offsetT ;
struct TYPE_6__ {scalar_t__ X_op; int /*<<< orphan*/  X_unsigned; } ;
typedef  TYPE_2__ expressionS ;
struct TYPE_7__ {TYPE_1__* arch_info; } ;
struct TYPE_5__ {int bits_per_address; } ;
typedef  int /*<<< orphan*/  S_GET_OTHER ;

/* Variables and functions */
 scalar_t__ O_absent ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  bfd_com_section_ptr ; 
 int /*<<< orphan*/  const_flag ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ flag_mri ; 
 int FUNC13 (TYPE_2__*) ; 
 char FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC16 (char*,char) ; 
 char* FUNC17 (char*) ; 
 TYPE_3__* stdoutput ; 
 int /*<<< orphan*/ * FUNC18 (int,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  undefined_section ; 
 int /*<<< orphan*/  zero_address_frag ; 

symbolS *
FUNC23 (int param,
		 symbolS *(*comm_parse_extra) (int, symbolS *, addressT))
{
  char *name;
  char c;
  char *p;
  offsetT temp, size;
  symbolS *symbolP = NULL;
  char *stop = NULL;
  char stopc = 0;
  expressionS exp;

  if (flag_mri)
    stop = FUNC17 (&stopc);

  name = input_line_pointer;
  c = FUNC14 ();
  /* Just after name is now '\0'.  */
  p = input_line_pointer;
  *p = c;

  if (name == p)
    {
      FUNC10 (FUNC9("expected symbol name"));
      FUNC15 ();
      goto out;
    }

  FUNC0 ();

  /* Accept an optional comma after the name.  The comma used to be
     required, but Irix 5 cc does not generate it for .lcomm.  */
  if (*input_line_pointer == ',')
    input_line_pointer++;

  temp = FUNC13 (&exp);
  size = temp;
  size &= ((offsetT) 2 << (stdoutput->arch_info->bits_per_address - 1)) - 1;
  if (exp.X_op == O_absent)
    {
      FUNC10 (FUNC9("missing size expression"));
      FUNC15 ();
      goto out;
    }
  else if (temp != size || !exp.X_unsigned)
    {
      FUNC11 (FUNC9("size (%ld) out of range, ignored"), (long) temp);
      FUNC15 ();
      goto out;
    }

  *p = 0;
  symbolP = FUNC21 (name);
  if ((FUNC4 (symbolP) || FUNC20 (symbolP))
      && !FUNC3 (symbolP))
    {
      if (!FUNC5 (symbolP))
	{
	  symbolP = NULL;
	  FUNC10 (FUNC9("symbol `%s' is already defined"), name);
	  *p = c;
	  FUNC15 ();
	  goto out;
	}
      symbolP = FUNC19 (symbolP, 1);
      FUNC7 (symbolP, undefined_section);
      FUNC8 (symbolP, 0);
      FUNC22 (symbolP, &zero_address_frag);
      FUNC1 (symbolP);
    }

  size = FUNC2 (symbolP);
  if (size == 0)
    size = temp;
  else if (size != temp)
    FUNC11 (FUNC9("size of \"%s\" is already %ld; not changing to %ld"),
	     name, (long) size, (long) temp);

  *p = c;
  if (comm_parse_extra != NULL)
    symbolP = (*comm_parse_extra) (param, symbolP, size);
  else
    {
      FUNC8 (symbolP, (valueT) size);
      FUNC6 (symbolP);
      FUNC7 (symbolP, bfd_com_section_ptr);
#ifdef OBJ_VMS
      {
	extern int flag_one;
	if (size == 0 || !flag_one)
	  S_GET_OTHER (symbolP) = const_flag;
      }
#endif
    }

  FUNC12 ();
 out:
  if (flag_mri)
    FUNC16 (stop, stopc);
  return symbolP;
}