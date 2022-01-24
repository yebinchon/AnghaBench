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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct die_info {unsigned int num_attrs; TYPE_1__* attrs; int /*<<< orphan*/ * child; int /*<<< orphan*/  offset; int /*<<< orphan*/  abbrev; int /*<<< orphan*/  tag; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int form; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
#define  DW_FORM_addr 147 
#define  DW_FORM_block 146 
#define  DW_FORM_block1 145 
#define  DW_FORM_block2 144 
#define  DW_FORM_block4 143 
#define  DW_FORM_data1 142 
#define  DW_FORM_data2 141 
#define  DW_FORM_data4 140 
#define  DW_FORM_data8 139 
#define  DW_FORM_flag 138 
#define  DW_FORM_flag_present 137 
#define  DW_FORM_indirect 136 
#define  DW_FORM_ref1 135 
#define  DW_FORM_ref2 134 
#define  DW_FORM_ref4 133 
#define  DW_FORM_ref_addr 132 
#define  DW_FORM_sdata 131 
#define  DW_FORM_string 130 
#define  DW_FORM_strp 129 
#define  DW_FORM_udata 128 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct die_info *die)
{
  unsigned int i;

  FUNC8 (gdb_stderr, "Die: %s (abbrev = %d, offset = %d)\n",
	   FUNC7 (die->tag), die->abbrev, die->offset);
  FUNC8 (gdb_stderr, "\thas children: %s\n",
	   FUNC5 (die->child != NULL));

  FUNC8 (gdb_stderr, "\tattributes:\n");
  for (i = 0; i < die->num_attrs; ++i)
    {
      FUNC8 (gdb_stderr, "\t\t%s (%s) ",
	       FUNC4 (die->attrs[i].name),
	       FUNC6 (die->attrs[i].form));
      switch (die->attrs[i].form)
	{
	case DW_FORM_ref_addr:
	case DW_FORM_addr:
	  FUNC8 (gdb_stderr, "address: ");
	  FUNC9 (FUNC0 (&die->attrs[i]), 1, gdb_stderr);
	  break;
	case DW_FORM_block2:
	case DW_FORM_block4:
	case DW_FORM_block:
	case DW_FORM_block1:
	  FUNC8 (gdb_stderr, "block: size %d", FUNC1 (&die->attrs[i])->size);
	  break;
	case DW_FORM_data1:
	case DW_FORM_data2:
	case DW_FORM_data4:
	case DW_FORM_data8:
	case DW_FORM_ref1:
	case DW_FORM_ref2:
	case DW_FORM_ref4:
	case DW_FORM_udata:
	case DW_FORM_sdata:
	  FUNC8 (gdb_stderr, "constant: %ld", FUNC3 (&die->attrs[i]));
	  break;
	case DW_FORM_string:
	case DW_FORM_strp:
	  FUNC8 (gdb_stderr, "string: \"%s\"",
		   FUNC2 (&die->attrs[i])
		   ? FUNC2 (&die->attrs[i]) : "");
	  break;
	case DW_FORM_flag:
	  if (FUNC3 (&die->attrs[i]))
	    FUNC8 (gdb_stderr, "flag: TRUE");
	  else
	    FUNC8 (gdb_stderr, "flag: FALSE");
	  break;
	case DW_FORM_flag_present:
	  FUNC8 (gdb_stderr, "flag: TRUE");
	  break;
	case DW_FORM_indirect:
	  /* the reader will have reduced the indirect form to
	     the "base form" so this form should not occur */
	  FUNC8 (gdb_stderr, "unexpected attribute form: DW_FORM_indirect");
	  break;
	default:
	  FUNC8 (gdb_stderr, "unsupported attribute form: %d.",
		   die->attrs[i].form);
	}
      FUNC8 (gdb_stderr, "\n");
    }
}