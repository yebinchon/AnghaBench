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
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
typedef  enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;

/* Variables and functions */
#define  AMD64_INTEGER 137 
 int AMD64_MEMORY ; 
#define  AMD64_NO_CLASS 136 
#define  AMD64_RAX_REGNUM 135 
#define  AMD64_RDX_REGNUM 134 
#define  AMD64_SSE 133 
#define  AMD64_SSEUP 132 
 int AMD64_ST0_REGNUM ; 
#define  AMD64_X87 131 
#define  AMD64_X87UP 130 
#define  AMD64_XMM0_REGNUM 129 
#define  AMD64_XMM1_REGNUM 128 
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,struct regcache*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,int,int,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static enum return_value_convention
FUNC7 (struct gdbarch *gdbarch, struct type *type,
		    struct regcache *regcache,
		    void *readbuf, const void *writebuf)
{
  enum amd64_reg_class class[2];
  int len = FUNC0 (type);
  static int integer_regnum[] = { AMD64_RAX_REGNUM, AMD64_RDX_REGNUM };
  static int sse_regnum[] = { AMD64_XMM0_REGNUM, AMD64_XMM1_REGNUM };
  int integer_reg = 0;
  int sse_reg = 0;
  int i;

  FUNC2 (!(readbuf && writebuf));

  /* 1. Classify the return type with the classification algorithm.  */
  FUNC1 (type, class);

  /* 2. If the type has class MEMORY, then the caller provides space
        for the return value and passes the address of this storage in
        %rdi as if it were the first argument to the function. In
        effect, this address becomes a hidden first argument.  */
  if (class[0] == AMD64_MEMORY)
    return RETURN_VALUE_STRUCT_CONVENTION;

  FUNC2 (class[1] != AMD64_MEMORY);
  FUNC2 (len <= 16);

  for (i = 0; len > 0; i++, len -= 8)
    {
      int regnum = -1;
      int offset = 0;

      switch (class[i])
	{
	case AMD64_INTEGER:
	  /* 3. If the class is INTEGER, the next available register
	     of the sequence %rax, %rdx is used.  */
	  regnum = integer_regnum[integer_reg++];
	  break;

	case AMD64_SSE:
	  /* 4. If the class is SSE, the next available SSE register
             of the sequence %xmm0, %xmm1 is used.  */
	  regnum = sse_regnum[sse_reg++];
	  break;

	case AMD64_SSEUP:
	  /* 5. If the class is SSEUP, the eightbyte is passed in the
	     upper half of the last used SSE register.  */
	  FUNC2 (sse_reg > 0);
	  regnum = sse_regnum[sse_reg - 1];
	  offset = 8;
	  break;

	case AMD64_X87:
	  /* 6. If the class is X87, the value is returned on the X87
             stack in %st0 as 80-bit x87 number.  */
	  regnum = AMD64_ST0_REGNUM;
	  if (writebuf)
	    FUNC3 (gdbarch, regcache);
	  break;

	case AMD64_X87UP:
	  /* 7. If the class is X87UP, the value is returned together
             with the previous X87 value in %st0.  */
	  FUNC2 (i > 0 && class[0] == AMD64_X87);
	  regnum = AMD64_ST0_REGNUM;
	  offset = 8;
	  len = 2;
	  break;

	case AMD64_NO_CLASS:
	  continue;

	default:
	  FUNC2 (!"Unexpected register class.");
	}

      FUNC2 (regnum != -1);

      if (readbuf)
	FUNC5 (regcache, regnum, offset, FUNC4 (len, 8),
				(char *) readbuf + i * 8);
      if (writebuf)
	FUNC6 (regcache, regnum, offset, FUNC4 (len, 8),
				 (const char *) writebuf + i * 8);
    }

  return RETURN_VALUE_REGISTER_CONVENTION;
}