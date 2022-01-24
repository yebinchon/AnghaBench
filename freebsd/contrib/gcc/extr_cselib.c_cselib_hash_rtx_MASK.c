#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_3__ {unsigned int value; } ;
typedef  TYPE_1__ cselib_val ;

/* Variables and functions */
#define  ASM_OPERANDS 145 
#define  CALL 144 
#define  CC0 143 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_DOUBLE 142 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 141 
#define  CONST_VECTOR 140 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 139 
#define  MEM 138 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  PC 137 
#define  POST_DEC 136 
#define  POST_INC 135 
#define  POST_MODIFY 134 
#define  PRE_DEC 133 
#define  PRE_INC 132 
#define  PRE_MODIFY 131 
#define  REG 130 
#define  SYMBOL_REF 129 
#define  UNSPEC_VOLATILE 128 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 unsigned int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC20 (rtx x, int create)
{
  cselib_val *e;
  int i, j;
  enum rtx_code code;
  const char *fmt;
  unsigned int hash = 0;

  code = FUNC6 (x);
  hash += (unsigned) code + (unsigned) FUNC7 (x);

  switch (code)
    {
    case MEM:
    case REG:
      e = FUNC17 (x, FUNC7 (x), create);
      if (! e)
	return 0;

      return e->value;

    case CONST_INT:
      hash += ((unsigned) CONST_INT << 7) + FUNC10 (x);
      return hash ? hash : (unsigned int) CONST_INT;

    case CONST_DOUBLE:
      /* This is like the general case, except that it only counts
	 the integers representing the constant.  */
      hash += (unsigned) code + (unsigned) FUNC7 (x);
      if (FUNC7 (x) != VOIDmode)
	hash += FUNC19 (FUNC3 (x));
      else
	hash += ((unsigned) FUNC2 (x)
		 + (unsigned) FUNC1 (x));
      return hash ? hash : (unsigned int) CONST_DOUBLE;

    case CONST_VECTOR:
      {
	int units;
	rtx elt;

	units = FUNC5 (x);

	for (i = 0; i < units; ++i)
	  {
	    elt = FUNC4 (x, i);
	    hash += FUNC20 (elt, 0);
	  }

	return hash;
      }

      /* Assume there is only one rtx object for any given label.  */
    case LABEL_REF:
      /* We don't hash on the address of the CODE_LABEL to avoid bootstrap
	 differences and differences between each stage's debugging dumps.  */
      hash += (((unsigned int) LABEL_REF << 7)
	       + FUNC0 (FUNC12 (x, 0)));
      return hash ? hash : (unsigned int) LABEL_REF;

    case SYMBOL_REF:
      {
	/* Don't hash on the symbol's address to avoid bootstrap differences.
	   Different hash values may cause expressions to be recorded in
	   different orders and thus different registers to be used in the
	   final assembler.  This also avoids differences in the dump files
	   between various stages.  */
	unsigned int h = 0;
	const unsigned char *p = (const unsigned char *) FUNC14 (x, 0);

	while (*p)
	  h += (h << 7) + *p++; /* ??? revisit */

	hash += ((unsigned int) SYMBOL_REF << 7) + h;
	return hash ? hash : (unsigned int) SYMBOL_REF;
      }

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case POST_MODIFY:
    case PRE_MODIFY:
    case PC:
    case CC0:
    case CALL:
    case UNSPEC_VOLATILE:
      return 0;

    case ASM_OPERANDS:
      if (FUNC11 (x))
	return 0;

      break;

    default:
      break;
    }

  i = FUNC9 (code) - 1;
  fmt = FUNC8 (code);
  for (; i >= 0; i--)
    {
      switch (fmt[i])
	{
	case 'e':
	  {
	    rtx tem = FUNC12 (x, i);
	    unsigned int tem_hash = FUNC20 (tem, create);
	    
	    if (tem_hash == 0)
	      return 0;
	    
	    hash += tem_hash;
	  }
	  break;
	case 'E':
	  for (j = 0; j < FUNC16 (x, i); j++)
	    {
	      unsigned int tem_hash
		= FUNC20 (FUNC15 (x, i, j), create);
	      
	      if (tem_hash == 0)
		return 0;
	      
	      hash += tem_hash;
	    }
	  break;

	case 's':
	  {
	    const unsigned char *p = (const unsigned char *) FUNC14 (x, i);
	    
	    if (p)
	      while (*p)
		hash += *p++;
	    break;
	  }
	  
	case 'i':
	  hash += FUNC13 (x, i);
	  break;

	case '0':
	case 't':
	  /* unused */
	  break;
	  
	default:
	  FUNC18 ();
	}
    }

  return hash ? hash : 1 + (unsigned int) FUNC6 (x);
}