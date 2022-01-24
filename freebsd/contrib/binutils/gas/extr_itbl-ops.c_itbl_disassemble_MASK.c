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
struct itbl_field {int type; int /*<<< orphan*/  range; struct itbl_field* next; } ;
struct itbl_entry {char* name; int /*<<< orphan*/  processor; struct itbl_field* fields; } ;
typedef  int /*<<< orphan*/  e_processor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
#define  e_addr 132 
#define  e_creg 131 
#define  e_dreg 130 
#define  e_greg 129 
#define  e_immed 128 
 int e_insn ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 struct itbl_entry* FUNC3 (int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int
FUNC8 (char *s, unsigned long insn)
{
  e_processor processor;
  struct itbl_entry *e;
  struct itbl_field *f;

  if (!FUNC1 (insn))
    return 0;			/* error */
  processor = FUNC4 (FUNC0 (insn));

  /* find entry in list */
  e = FUNC3 (processor, e_insn, insn, 0);
  if (!e)
    return 0;			/* opcode not in table; invalid instruction */
  FUNC7 (s, e->name);

  /* Parse insn's args (if any).  */
  for (f = e->fields; f; f = f->next)	/* for each arg, ...  */
    {
      struct itbl_entry *r;
      unsigned long value;

      if (f == e->fields)	/* First operand is preceded by tab.  */
	FUNC6 (s, "\t");
      else			/* ','s separate following operands.  */
	FUNC6 (s, ",");
      value = FUNC2 (insn, f->range);
      /* n should be in form $n or 0xhhh (are symbol names valid?? */
      switch (f->type)
	{
	case e_dreg:
	case e_creg:
	case e_greg:
	  /* Accept either a string name
	     or '$' followed by the register number.  */
	  r = FUNC3 (e->processor, f->type, value, &f->range);
	  if (r)
	    FUNC6 (s, r->name);
	  else
	    FUNC5 (s, "%s$%lu", s, value);
	  break;
	case e_addr:
	  /* Use assembler's symbol table to find symbol.  */
	  /* FIXME!! Do we need this?  If so, what about relocs??  */
	  /* If not a symbol, fall through to IMMED.  */
	case e_immed:
	  FUNC5 (s, "%s0x%lx", s, value);
	  break;
	default:
	  return 0;		/* error; invalid field spec */
	}
    }
  return 1;			/* Done!  */
}