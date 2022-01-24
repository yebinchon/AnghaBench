#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s390_address {int /*<<< orphan*/  base; int /*<<< orphan*/  disp; int /*<<< orphan*/  indx; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  CODE_LABEL 135 
#define  CONST 134 
#define  CONST_DOUBLE 133 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 132 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HImode ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 131 
#define  MEM 130 
#define  REG 129 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  SImode ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  TRUE ; 
 int UNSPEC ; 
 int /*<<< orphan*/  UNSPEC_TLSGD ; 
 int /*<<< orphan*/  UNSPEC_TLSLDM ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** reg_names ; 
 char* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,struct s390_address*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC25 (FILE *file, rtx x, int code)
{
  switch (code)
    {
    case 'C':
      FUNC13 (file, FUNC22 (x, FALSE));
      return;

    case 'D':
      FUNC13 (file, FUNC22 (x, TRUE));
      return;

    case 'J':
      if (FUNC1 (x) == SYMBOL_REF)
	{
	  FUNC13 (file, "%s", ":tls_load:");
	  FUNC18 (file, x);
	}
      else if (FUNC1 (x) == UNSPEC && FUNC8 (x, 1) == UNSPEC_TLSGD)
	{
	  FUNC13 (file, "%s", ":tls_gdcall:");
	  FUNC18 (file, FUNC9 (x, 0, 0));
	}
      else if (FUNC1 (x) == UNSPEC && FUNC8 (x, 1) == UNSPEC_TLSLDM)
	{
	  FUNC13 (file, "%s", ":tls_ldcall:");
	  FUNC10 (file, FUNC17 ());
	}
      else
	FUNC15 ();
      return;

    case 'G':
      FUNC13 (file, "%u", FUNC3 (FUNC2 (x)));
      return;

    case 'O':
      {
        struct s390_address ad;
	int ret;

        FUNC14 (FUNC1 (x) == MEM);
	ret = FUNC23 (FUNC7 (x, 0), &ad);
	FUNC14 (ret);
	FUNC14 (!ad.base || FUNC6 (FUNC5 (ad.base)));
	FUNC14 (!ad.indx);

        if (ad.disp)
          FUNC18 (file, ad.disp);
        else
          FUNC13 (file, "0");
      }
      return;

    case 'R':
      {
        struct s390_address ad;
	int ret;

        FUNC14 (FUNC1 (x) == MEM);
	ret = FUNC23 (FUNC7 (x, 0), &ad);
	FUNC14 (ret);
	FUNC14 (!ad.base || FUNC6 (FUNC5 (ad.base)));
	FUNC14 (!ad.indx);

        if (ad.base)
          FUNC13 (file, "%s", reg_names[FUNC5 (ad.base)]);
        else
          FUNC13 (file, "0");
      }
      return;

    case 'S':
      {
	struct s390_address ad;
	int ret;

        FUNC14 (FUNC1 (x) == MEM);
	ret = FUNC23 (FUNC7 (x, 0), &ad);
	FUNC14 (ret);
	FUNC14 (!ad.base || FUNC6 (FUNC5 (ad.base)));
	FUNC14 (!ad.indx);

	if (ad.disp)
	  FUNC18 (file, ad.disp);
	else
	  FUNC13 (file, "0");

	if (ad.base)
	  FUNC13 (file, "(%s)", reg_names[FUNC5 (ad.base)]);
      }
      return;

    case 'N':
      if (FUNC1 (x) == REG)
	x = FUNC16 (FUNC2 (x), FUNC5 (x) + 1);
      else if (FUNC1 (x) == MEM)
	x = FUNC11 (x, VOIDmode, FUNC20 (FUNC7 (x, 0), 4));
      else
        FUNC15 ();
      break;

    case 'M':
      if (FUNC1 (x) == REG)
	x = FUNC16 (FUNC2 (x), FUNC5 (x) + 1);
      else if (FUNC1 (x) == MEM)
	x = FUNC11 (x, VOIDmode, FUNC20 (FUNC7 (x, 0), 8));
      else
        FUNC15 ();
      break;

    case 'Y':
      FUNC21 (file, x);
      return;
    }

  switch (FUNC1 (x))
    {
    case REG:
      FUNC13 (file, "%s", reg_names[FUNC5 (x)]);
      break;

    case MEM:
      FUNC19 (FUNC7 (x, 0));
      break;

    case CONST:
    case CODE_LABEL:
    case LABEL_REF:
    case SYMBOL_REF:
      FUNC18 (file, x);
      break;

    case CONST_INT:
      if (code == 'b')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC4 (x) & 0xff);
      else if (code == 'x')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC4 (x) & 0xffff);
      else if (code == 'h')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, ((FUNC4 (x) & 0xffff) ^ 0x8000) - 0x8000);
      else if (code == 'i')
	FUNC13 (file, HOST_WIDE_INT_PRINT_DEC,
		 FUNC24 (x, HImode, 0));
      else if (code == 'j')
	FUNC13 (file, HOST_WIDE_INT_PRINT_DEC,
		 FUNC24 (x, HImode, -1));
      else if (code == 'k')
 	FUNC13 (file, HOST_WIDE_INT_PRINT_DEC,
 		 FUNC24 (x, SImode, 0));
      else if (code == 'm')
 	FUNC13 (file, HOST_WIDE_INT_PRINT_DEC,
 		 FUNC24 (x, SImode, -1));
      else if (code == 'o')
	FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC4 (x) & 0xffffffff);
      else
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC4 (x));
      break;

    case CONST_DOUBLE:
      FUNC14 (FUNC2 (x) == VOIDmode);
      if (code == 'b')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC0 (x) & 0xff);
      else if (code == 'x')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, FUNC0 (x) & 0xffff);
      else if (code == 'h')
        FUNC13 (file, HOST_WIDE_INT_PRINT_DEC, ((FUNC0 (x) & 0xffff) ^ 0x8000) - 0x8000);
      else
        FUNC15 ();
      break;

    default:
      FUNC12 ("UNKNOWN in print_operand !?", x);
      break;
    }
}