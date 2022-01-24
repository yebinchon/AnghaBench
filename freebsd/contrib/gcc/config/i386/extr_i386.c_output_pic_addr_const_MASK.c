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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASM_INTEL ; 
 int /*<<< orphan*/  ASSEMBLER_DIALECT ; 
#define  CODE_LABEL 146 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST 145 
#define  CONST_DOUBLE 144 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 143 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 142 
 int /*<<< orphan*/  MACHOPIC_INDIRECT ; 
 int /*<<< orphan*/  MACHOPIC_UNDEFINED_FUNCTION ; 
#define  MINUS 141 
#define  PC 140 
#define  PLUS 139 
#define  SYMBOL_REF 138 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_MACHO ; 
#define  UNSPEC 137 
#define  UNSPEC_DTPOFF 136 
#define  UNSPEC_GOT 135 
#define  UNSPEC_GOTNTPOFF 134 
#define  UNSPEC_GOTOFF 133 
#define  UNSPEC_GOTPCREL 132 
#define  UNSPEC_GOTTPOFF 131 
#define  UNSPEC_INDNTPOFF 130 
#define  UNSPEC_NTPOFF 129 
#define  UNSPEC_TPOFF 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * asm_out_file ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC24 (FILE *file, rtx x, int code)
{
  char buf[256];

  switch (FUNC4 (x))
    {
    case PC:
      FUNC17 (flag_pic);
      FUNC23 ('.', file);
      break;

    case SYMBOL_REF:
      if (! TARGET_MACHO || TARGET_64BIT)
	FUNC21 (file, x);
      else
	{
	  const char *name = FUNC11 (x, 0);

	  /* Mark the decl as referenced so that cgraph will output the function.  */
	  if (FUNC7 (x))
	    FUNC20 (FUNC7 (x));

#if TARGET_MACHO
	  if (MACHOPIC_INDIRECT
	      && machopic_classify_symbol (x) == MACHOPIC_UNDEFINED_FUNCTION)
	    name = machopic_indirection_name (x, /*stub_p=*/true);
#endif
	  FUNC14 (file, name);
	}
      if (!TARGET_MACHO && code == 'P' && ! FUNC8 (x))
	FUNC16 ("@PLT", file);
      break;

    case LABEL_REF:
      x = FUNC9 (x, 0);
      /* FALLTHRU */
    case CODE_LABEL:
      FUNC0 (buf, "L", FUNC1 (x));
      FUNC14 (asm_out_file, buf);
      break;

    case CONST_INT:
      FUNC15 (file, HOST_WIDE_INT_PRINT_DEC, FUNC6 (x));
      break;

    case CONST:
      /* This used to output parentheses around the expression,
	 but that does not work on the 386 (either ATT or BSD assembler).  */
      FUNC24 (file, FUNC9 (x, 0), code);
      break;

    case CONST_DOUBLE:
      if (FUNC5 (x) == VOIDmode)
	{
	  /* We can use %d if the number is <32 bits and positive.  */
	  if (FUNC2 (x) || FUNC3 (x) < 0)
	    FUNC15 (file, "0x%lx%08lx",
		     (unsigned long) FUNC2 (x),
		     (unsigned long) FUNC3 (x));
	  else
	    FUNC15 (file, HOST_WIDE_INT_PRINT_DEC, FUNC3 (x));
	}
      else
	/* We can't handle floating point constants;
	   PRINT_OPERAND must handle them.  */
	FUNC22 ("floating constant misused");
      break;

    case PLUS:
      /* Some assemblers need integer constants to appear first.  */
      if (FUNC4 (FUNC9 (x, 0)) == CONST_INT)
	{
	  FUNC24 (file, FUNC9 (x, 0), code);
	  FUNC23 ('+', file);
	  FUNC24 (file, FUNC9 (x, 1), code);
	}
      else
	{
	  FUNC17 (FUNC4 (FUNC9 (x, 1)) == CONST_INT);
	  FUNC24 (file, FUNC9 (x, 1), code);
	  FUNC23 ('+', file);
	  FUNC24 (file, FUNC9 (x, 0), code);
	}
      break;

    case MINUS:
      if (!TARGET_MACHO)
	FUNC23 (ASSEMBLER_DIALECT == ASM_INTEL ? '(' : '[', file);
      FUNC24 (file, FUNC9 (x, 0), code);
      FUNC23 ('-', file);
      FUNC24 (file, FUNC9 (x, 1), code);
      if (!TARGET_MACHO)
	FUNC23 (ASSEMBLER_DIALECT == ASM_INTEL ? ')' : ']', file);
      break;

     case UNSPEC:
       FUNC17 (FUNC13 (x, 0) == 1);
       FUNC24 (file, FUNC12 (x, 0, 0), code);
       switch (FUNC10 (x, 1))
	{
	case UNSPEC_GOT:
	  FUNC16 ("@GOT", file);
	  break;
	case UNSPEC_GOTOFF:
	  FUNC16 ("@GOTOFF", file);
	  break;
	case UNSPEC_GOTPCREL:
	  FUNC16 ("@GOTPCREL(%rip)", file);
	  break;
	case UNSPEC_GOTTPOFF:
	  /* FIXME: This might be @TPOFF in Sun ld too.  */
	  FUNC16 ("@GOTTPOFF", file);
	  break;
	case UNSPEC_TPOFF:
	  FUNC16 ("@TPOFF", file);
	  break;
	case UNSPEC_NTPOFF:
	  if (TARGET_64BIT)
	    FUNC16 ("@TPOFF", file);
	  else
	    FUNC16 ("@NTPOFF", file);
	  break;
	case UNSPEC_DTPOFF:
	  FUNC16 ("@DTPOFF", file);
	  break;
	case UNSPEC_GOTNTPOFF:
	  if (TARGET_64BIT)
	    FUNC16 ("@GOTTPOFF(%rip)", file);
	  else
	    FUNC16 ("@GOTNTPOFF", file);
	  break;
	case UNSPEC_INDNTPOFF:
	  FUNC16 ("@INDNTPOFF", file);
	  break;
	default:
	  FUNC22 ("invalid UNSPEC as operand");
	  break;
	}
       break;

    default:
      FUNC22 ("invalid expression as operand");
    }
}