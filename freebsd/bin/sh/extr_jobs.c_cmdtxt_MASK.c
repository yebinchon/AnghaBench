#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {char* text; union node* next; } ;
struct TYPE_14__ {union node* next; } ;
struct TYPE_13__ {union node* redirect; union node* args; } ;
struct TYPE_24__ {union node* com; } ;
struct TYPE_23__ {TYPE_7__* expr; } ;
struct TYPE_20__ {char* var; } ;
struct TYPE_19__ {union node* ch2; union node* ch1; } ;
struct TYPE_18__ {union node* ifpart; union node* test; } ;
struct TYPE_17__ {union node* n; } ;
struct TYPE_16__ {struct nodelist* cmdlist; } ;
union node {int type; TYPE_12__ narg; TYPE_11__ nfile; TYPE_10__ ncmd; TYPE_9__ nnot; TYPE_8__ ncase; TYPE_5__ nfor; TYPE_4__ nbinary; TYPE_3__ nif; TYPE_2__ nredir; TYPE_1__ npipe; } ;
struct nodelist {struct nodelist* next; union node* n; } ;
struct TYPE_21__ {char* text; } ;
struct TYPE_22__ {TYPE_6__ narg; } ;

/* Variables and functions */
#define  NAND 152 
#define  NAPPEND 151 
#define  NARG 150 
#define  NBACKGND 149 
#define  NCASE 148 
#define  NCLOBBER 147 
#define  NCMD 146 
#define  NDEFUN 145 
#define  NFOR 144 
#define  NFROM 143 
#define  NFROMFD 142 
#define  NFROMTO 141 
#define  NHERE 140 
#define  NIF 139 
#define  NNOT 138 
#define  NOR 137 
#define  NPIPE 136 
#define  NREDIR 135 
#define  NSEMI 134 
#define  NSUBSHELL 133 
#define  NTO 132 
#define  NTOFD 131 
#define  NUNTIL 130 
#define  NWHILE 129 
#define  NXHERE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (union node*) ; 
 int /*<<< orphan*/  FUNC2 (union node*,char*,int) ; 

__attribute__((used)) static void
FUNC3(union node *n)
{
	union node *np;
	struct nodelist *lp;

	if (n == NULL)
		return;
	switch (n->type) {
	case NSEMI:
		FUNC3(n->nbinary.ch1);
		FUNC0("; ");
		FUNC3(n->nbinary.ch2);
		break;
	case NAND:
		FUNC3(n->nbinary.ch1);
		FUNC0(" && ");
		FUNC3(n->nbinary.ch2);
		break;
	case NOR:
		FUNC3(n->nbinary.ch1);
		FUNC0(" || ");
		FUNC3(n->nbinary.ch2);
		break;
	case NPIPE:
		for (lp = n->npipe.cmdlist ; lp ; lp = lp->next) {
			FUNC3(lp->n);
			if (lp->next)
				FUNC0(" | ");
		}
		break;
	case NSUBSHELL:
		FUNC0("(");
		FUNC3(n->nredir.n);
		FUNC0(")");
		break;
	case NREDIR:
	case NBACKGND:
		FUNC3(n->nredir.n);
		break;
	case NIF:
		FUNC0("if ");
		FUNC3(n->nif.test);
		FUNC0("; then ");
		FUNC3(n->nif.ifpart);
		FUNC0("...");
		break;
	case NWHILE:
		FUNC0("while ");
		FUNC3(n->nbinary.ch1);
		FUNC1(n->nbinary.ch2);
		break;
	case NUNTIL:
		FUNC0("until ");
		FUNC3(n->nbinary.ch1);
		FUNC1(n->nbinary.ch2);
		break;
	case NFOR:
		FUNC0("for ");
		FUNC0(n->nfor.var);
		FUNC0(" in ...");
		break;
	case NCASE:
		FUNC0("case ");
		FUNC0(n->ncase.expr->narg.text);
		FUNC0(" in ...");
		break;
	case NDEFUN:
		FUNC0(n->narg.text);
		FUNC0("() ...");
		break;
	case NNOT:
		FUNC0("! ");
		FUNC3(n->nnot.com);
		break;
	case NCMD:
		for (np = n->ncmd.args ; np ; np = np->narg.next) {
			FUNC3(np);
			if (np->narg.next)
				FUNC0(" ");
		}
		for (np = n->ncmd.redirect ; np ; np = np->nfile.next) {
			FUNC0(" ");
			FUNC3(np);
		}
		break;
	case NARG:
		FUNC0(n->narg.text);
		break;
	case NTO:
		FUNC2(n, ">", 1);
		break;
	case NAPPEND:
		FUNC2(n, ">>", 1);
		break;
	case NTOFD:
		FUNC2(n, ">&", 1);
		break;
	case NCLOBBER:
		FUNC2(n, ">|", 1);
		break;
	case NFROM:
		FUNC2(n, "<", 0);
		break;
	case NFROMTO:
		FUNC2(n, "<>", 0);
		break;
	case NFROMFD:
		FUNC2(n, "<&", 0);
		break;
	case NHERE:
	case NXHERE:
		FUNC0("<<...");
		break;
	default:
		FUNC0("???");
		break;
	}
}