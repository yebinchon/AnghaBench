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

/* Variables and functions */
#define  CONST 146 
#define  CONST_DOUBLE 145 
#define  CONST_INT 144 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 143 
#define  MINUS 142 
#define  PLUS 141 
#define  SYMBOL_REF 140 
 int TARGET_CPU_ZARCH ; 
#define  UNSPEC 139 
#define  UNSPEC_DTPOFF 138 
#define  UNSPEC_GOT 137 
#define  UNSPEC_GOTNTPOFF 136 
#define  UNSPEC_GOTOFF 135 
#define  UNSPEC_INDNTPOFF 134 
#define  UNSPEC_INSN 133 
#define  UNSPEC_LTREL_OFFSET 132 
#define  UNSPEC_NTPOFF 131 
#define  UNSPEC_PLTOFF 130 
#define  UNSPEC_TLSGD 129 
#define  UNSPEC_TLSLDM 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  flag_pic ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (rtx x)
{
  switch (FUNC0 (x))
    {
    case CONST_INT:
    case CONST_DOUBLE:
      /* Accept all non-symbolic constants.  */
      return false;

    case LABEL_REF:
      /* Labels are OK iff we are non-PIC.  */
      return flag_pic != 0;

    case SYMBOL_REF:
      /* 'Naked' TLS symbol references are never OK,
         non-TLS symbols are OK iff we are non-PIC.  */
      if (FUNC4 (x))
	return true;
      else
	return flag_pic != 0;

    case CONST:
      return FUNC5 (FUNC1 (x, 0));
    case PLUS:
    case MINUS:
      return FUNC5 (FUNC1 (x, 0))
	     || FUNC5 (FUNC1 (x, 1));

    case UNSPEC:
      switch (FUNC2 (x, 1))
	{
	/* Only lt-relative or GOT-relative UNSPECs are OK.  */
	case UNSPEC_LTREL_OFFSET:
	case UNSPEC_GOT:
	case UNSPEC_GOTOFF:
	case UNSPEC_PLTOFF:
	case UNSPEC_TLSGD:
	case UNSPEC_TLSLDM:
	case UNSPEC_NTPOFF:
	case UNSPEC_DTPOFF:
	case UNSPEC_GOTNTPOFF:
	case UNSPEC_INDNTPOFF:
	  return false;

	/* If the literal pool shares the code section, be put
	   execute template placeholders into the pool as well.  */
	case UNSPEC_INSN:
	  return TARGET_CPU_ZARCH;

	default:
	  return true;
	}
      break;

    default:
      FUNC3 ();
    }
}