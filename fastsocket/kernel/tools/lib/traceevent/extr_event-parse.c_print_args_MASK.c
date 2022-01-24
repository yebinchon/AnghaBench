#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct trace_seq {int dummy; } ;
struct TYPE_16__ {char* op; struct print_arg* right; struct print_arg* left; } ;
struct TYPE_15__ {char* type; struct print_arg* item; } ;
struct TYPE_14__ {char* string; } ;
struct TYPE_13__ {struct print_arg* size; struct print_arg* field; } ;
struct TYPE_12__ {int /*<<< orphan*/  symbols; struct print_arg* field; } ;
struct TYPE_11__ {char* delim; int /*<<< orphan*/  flags; struct print_arg* field; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {char* atom; } ;
struct print_arg {int type; struct print_arg* next; TYPE_8__ op; TYPE_7__ typecast; TYPE_6__ string; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;

/* Variables and functions */
#define  PRINT_ATOM 137 
#define  PRINT_BSTRING 136 
#define  PRINT_FIELD 135 
#define  PRINT_FLAGS 134 
#define  PRINT_HEX 133 
#define  PRINT_NULL 132 
#define  PRINT_OP 131 
#define  PRINT_STRING 130 
#define  PRINT_SYMBOL 129 
#define  PRINT_TYPE 128 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*) ; 

__attribute__((used)) static void FUNC6(struct print_arg *args)
{
	int print_paren = 1;
	struct trace_seq s;

	switch (args->type) {
	case PRINT_NULL:
		FUNC1("null");
		break;
	case PRINT_ATOM:
		FUNC1("%s", args->atom.atom);
		break;
	case PRINT_FIELD:
		FUNC1("REC->%s", args->field.name);
		break;
	case PRINT_FLAGS:
		FUNC1("__print_flags(");
		FUNC6(args->flags.field);
		FUNC1(", %s, ", args->flags.delim);
		FUNC5(&s);
		FUNC0(&s, args->flags.flags);
		FUNC4(&s);
		FUNC3(&s);
		FUNC1(")");
		break;
	case PRINT_SYMBOL:
		FUNC1("__print_symbolic(");
		FUNC6(args->symbol.field);
		FUNC1(", ");
		FUNC5(&s);
		FUNC0(&s, args->symbol.symbols);
		FUNC4(&s);
		FUNC3(&s);
		FUNC1(")");
		break;
	case PRINT_HEX:
		FUNC1("__print_hex(");
		FUNC6(args->hex.field);
		FUNC1(", ");
		FUNC6(args->hex.size);
		FUNC1(")");
		break;
	case PRINT_STRING:
	case PRINT_BSTRING:
		FUNC1("__get_str(%s)", args->string.string);
		break;
	case PRINT_TYPE:
		FUNC1("(%s)", args->typecast.type);
		FUNC6(args->typecast.item);
		break;
	case PRINT_OP:
		if (FUNC2(args->op.op, ":") == 0)
			print_paren = 0;
		if (print_paren)
			FUNC1("(");
		FUNC6(args->op.left);
		FUNC1(" %s ", args->op.op);
		FUNC6(args->op.right);
		if (print_paren)
			FUNC1(")");
		break;
	default:
		/* we should warn... */
		return;
	}
	if (args->next) {
		FUNC1("\n");
		FUNC6(args->next);
	}
}