#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  elements; } ;
struct TYPE_22__ {TYPE_8__* ref; } ;
struct TYPE_20__ {TYPE_6__* ref; } ;
struct TYPE_18__ {int /*<<< orphan*/  elements; } ;
struct TYPE_17__ {int /*<<< orphan*/  code; int /*<<< orphan*/  parameters; int /*<<< orphan*/  lines; struct coff_type* function_returns; } ;
struct TYPE_16__ {int dim; struct coff_type* array_of; } ;
struct TYPE_15__ {struct coff_type* points_to; } ;
struct TYPE_14__ {int address; int size; } ;
struct TYPE_13__ {int /*<<< orphan*/  basic; TYPE_10__ aenumdef; TYPE_9__ astructref; TYPE_7__ aenumref; TYPE_5__ astructdef; TYPE_4__ function; TYPE_3__ array; TYPE_2__ pointer; TYPE_1__ asecdef; } ;
struct coff_type {int size; int type; TYPE_11__ u; } ;
struct TYPE_21__ {char* name; } ;
struct TYPE_19__ {char* name; } ;

/* Variables and functions */
#define  T_CHAR 153 
#define  T_DOUBLE 152 
#define  T_ENUM 151 
#define  T_FLOAT 150 
#define  T_INT 149 
#define  T_LNGDBL 148 
#define  T_LONG 147 
#define  T_MOE 146 
#define  T_NULL 145 
#define  T_SHORT 144 
#define  T_STRUCT 143 
#define  T_UCHAR 142 
#define  T_UINT 141 
#define  T_ULONG 140 
#define  T_UNION 139 
#define  T_USHORT 138 
#define  T_VOID 137 
 int /*<<< orphan*/  FUNC0 () ; 
#define  coff_array_type 136 
#define  coff_basic_type 135 
#define  coff_enumdef_type 134 
#define  coff_enumref_type 133 
#define  coff_function_type 132 
#define  coff_pointer_type 131 
#define  coff_secdef_type 130 
#define  coff_structdef_type 129 
#define  coff_structref_type 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (struct coff_type *p)
{
  FUNC5 (1);
  FUNC4 ("size %d ", p->size);

  switch (p->type)
    {
    case coff_secdef_type:
      FUNC4 ("section definition at %x size %x\n",
	      p->u.asecdef.address,
	      p->u.asecdef.size);
      FUNC3 ();
      break;
    case coff_pointer_type:
      FUNC4 ("pointer to");
      FUNC3 ();
      FUNC6 (p->u.pointer.points_to);
      break;
    case coff_array_type:
      FUNC4 ("array [%d] of", p->u.array.dim);
      FUNC3 ();
      FUNC6 (p->u.array.array_of);
      break;
    case coff_function_type:
      FUNC4 ("function returning");
      FUNC3 ();
      FUNC6 (p->u.function.function_returns);
      FUNC1 (p->u.function.lines);
      FUNC4 ("arguments");
      FUNC3 ();
      FUNC2 (p->u.function.parameters);
      FUNC5 (0);
      FUNC4 ("code");
      FUNC3 ();
      FUNC2 (p->u.function.code);
      FUNC5(0);
      break;
    case coff_structdef_type:
      FUNC4 ("structure definition");
      FUNC3 ();
      FUNC2 (p->u.astructdef.elements);
      break;
    case coff_structref_type:
      if (!p->u.aenumref.ref)
	FUNC4 ("structure ref to UNKNOWN struct");
      else
	FUNC4 ("structure ref to %s", p->u.aenumref.ref->name);
      break;
    case coff_enumref_type:
      FUNC4 ("enum ref to %s", p->u.astructref.ref->name);
      break;
    case coff_enumdef_type:
      FUNC4 ("enum definition");
      FUNC3 ();
      FUNC2 (p->u.aenumdef.elements);
      break;
    case coff_basic_type:
      switch (p->u.basic)
	{
	case T_NULL:
	  FUNC4 ("NULL");
	  break;
	case T_VOID:
	  FUNC4 ("VOID");
	  break;
	case T_CHAR:
	  FUNC4 ("CHAR");
	  break;
	case T_SHORT:
	  FUNC4 ("SHORT");
	  break;
	case T_INT:
	  FUNC4 ("INT ");
	  break;
	case T_LONG:
	  FUNC4 ("LONG");
	  break;
	case T_FLOAT:
	  FUNC4 ("FLOAT");
	  break;
	case T_DOUBLE:
	  FUNC4 ("DOUBLE");
	  break;
	case T_STRUCT:
	  FUNC4 ("STRUCT");
	  break;
	case T_UNION:
	  FUNC4 ("UNION");
	  break;
	case T_ENUM:
	  FUNC4 ("ENUM");
	  break;
	case T_MOE:
	  FUNC4 ("MOE ");
	  break;
	case T_UCHAR:
	  FUNC4 ("UCHAR");
	  break;
	case T_USHORT:
	  FUNC4 ("USHORT");
	  break;
	case T_UINT:
	  FUNC4 ("UINT");
	  break;
	case T_ULONG:
	  FUNC4 ("ULONG");
	  break;
	case T_LNGDBL:
	  FUNC4 ("LNGDBL");
	  break;
	default:
	  FUNC0 ();
	}
    }
  FUNC3 ();
  FUNC5 (-1);
}