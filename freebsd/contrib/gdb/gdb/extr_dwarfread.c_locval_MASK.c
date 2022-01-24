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
struct dieinfo {char* at_location; int isreg; int offreg; int optimized_out; void* basereg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_location ; 
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
 long FUNC0 (void*) ; 
 int /*<<< orphan*/  GET_SIGNED ; 
 int /*<<< orphan*/  GET_UNSIGNED ; 
#define  OP_ADD 134 
#define  OP_ADDR 133 
#define  OP_BASEREG 132 
#define  OP_CONST 131 
#define  OP_DEREF2 130 
#define  OP_DEREF4 129 
#define  OP_REG 128 
 int SIZEOF_LOC_ATOM_CODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  current_objfile ; 
 int /*<<< orphan*/  symfile_complaints ; 
 void* FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct dieinfo *dip)
{
  unsigned short nbytes;
  unsigned short locsize;
  auto long stack[64];
  int stacki;
  char *loc;
  char *end;
  int loc_atom_code;
  int loc_value_size;

  loc = dip->at_location;
  nbytes = FUNC2 (AT_location);
  locsize = FUNC4 (loc, nbytes, GET_UNSIGNED, current_objfile);
  loc += nbytes;
  end = loc + locsize;
  stacki = 0;
  stack[stacki] = 0;
  dip->isreg = 0;
  dip->offreg = 0;
  dip->optimized_out = 1;
  loc_value_size = FUNC1 (current_objfile);
  while (loc < end)
    {
      dip->optimized_out = 0;
      loc_atom_code = FUNC4 (loc, SIZEOF_LOC_ATOM_CODE, GET_UNSIGNED,
				      current_objfile);
      loc += SIZEOF_LOC_ATOM_CODE;
      switch (loc_atom_code)
	{
	case 0:
	  /* error */
	  loc = end;
	  break;
	case OP_REG:
	  /* push register (number) */
	  stack[++stacki]
	    = FUNC0 (FUNC4 (loc, loc_value_size,
						   GET_UNSIGNED,
						   current_objfile));
	  loc += loc_value_size;
	  dip->isreg = 1;
	  break;
	case OP_BASEREG:
	  /* push value of register (number) */
	  /* Actually, we compute the value as if register has 0, so the
	     value ends up being the offset from that register.  */
	  dip->offreg = 1;
	  dip->basereg = FUNC4 (loc, loc_value_size, GET_UNSIGNED,
					 current_objfile);
	  loc += loc_value_size;
	  stack[++stacki] = 0;
	  break;
	case OP_ADDR:
	  /* push address (relocated address) */
	  stack[++stacki] = FUNC4 (loc, loc_value_size,
					    GET_UNSIGNED, current_objfile);
	  loc += loc_value_size;
	  break;
	case OP_CONST:
	  /* push constant (number)   FIXME: signed or unsigned! */
	  stack[++stacki] = FUNC4 (loc, loc_value_size,
					    GET_SIGNED, current_objfile);
	  loc += loc_value_size;
	  break;
	case OP_DEREF2:
	  /* pop, deref and push 2 bytes (as a long) */
	  FUNC3 (&symfile_complaints,
		     "DIE @ 0x%x \"%s\", OP_DEREF2 address 0x%lx not handled",
		     DIE_ID, DIE_NAME, stack[stacki]);
	  break;
	case OP_DEREF4:	/* pop, deref and push 4 bytes (as a long) */
	  FUNC3 (&symfile_complaints,
		     "DIE @ 0x%x \"%s\", OP_DEREF4 address 0x%lx not handled",
		     DIE_ID, DIE_NAME, stack[stacki]);
	  break;
	case OP_ADD:		/* pop top 2 items, add, push result */
	  stack[stacki - 1] += stack[stacki];
	  stacki--;
	  break;
	}
    }
  return (stack[stacki]);
}