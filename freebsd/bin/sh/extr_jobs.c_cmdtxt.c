
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


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
 int cmdputs (char*) ;
 int cmdtxtdogroup (union node*) ;
 int cmdtxtredir (union node*,char*,int) ;

__attribute__((used)) static void
cmdtxt(union node *n)
{
 union node *np;
 struct nodelist *lp;

 if (n == ((void*)0))
  return;
 switch (n->type) {
 case 134:
  cmdtxt(n->nbinary.ch1);
  cmdputs("; ");
  cmdtxt(n->nbinary.ch2);
  break;
 case 152:
  cmdtxt(n->nbinary.ch1);
  cmdputs(" && ");
  cmdtxt(n->nbinary.ch2);
  break;
 case 137:
  cmdtxt(n->nbinary.ch1);
  cmdputs(" || ");
  cmdtxt(n->nbinary.ch2);
  break;
 case 136:
  for (lp = n->npipe.cmdlist ; lp ; lp = lp->next) {
   cmdtxt(lp->n);
   if (lp->next)
    cmdputs(" | ");
  }
  break;
 case 133:
  cmdputs("(");
  cmdtxt(n->nredir.n);
  cmdputs(")");
  break;
 case 135:
 case 149:
  cmdtxt(n->nredir.n);
  break;
 case 139:
  cmdputs("if ");
  cmdtxt(n->nif.test);
  cmdputs("; then ");
  cmdtxt(n->nif.ifpart);
  cmdputs("...");
  break;
 case 129:
  cmdputs("while ");
  cmdtxt(n->nbinary.ch1);
  cmdtxtdogroup(n->nbinary.ch2);
  break;
 case 130:
  cmdputs("until ");
  cmdtxt(n->nbinary.ch1);
  cmdtxtdogroup(n->nbinary.ch2);
  break;
 case 144:
  cmdputs("for ");
  cmdputs(n->nfor.var);
  cmdputs(" in ...");
  break;
 case 148:
  cmdputs("case ");
  cmdputs(n->ncase.expr->narg.text);
  cmdputs(" in ...");
  break;
 case 145:
  cmdputs(n->narg.text);
  cmdputs("() ...");
  break;
 case 138:
  cmdputs("! ");
  cmdtxt(n->nnot.com);
  break;
 case 146:
  for (np = n->ncmd.args ; np ; np = np->narg.next) {
   cmdtxt(np);
   if (np->narg.next)
    cmdputs(" ");
  }
  for (np = n->ncmd.redirect ; np ; np = np->nfile.next) {
   cmdputs(" ");
   cmdtxt(np);
  }
  break;
 case 150:
  cmdputs(n->narg.text);
  break;
 case 132:
  cmdtxtredir(n, ">", 1);
  break;
 case 151:
  cmdtxtredir(n, ">>", 1);
  break;
 case 131:
  cmdtxtredir(n, ">&", 1);
  break;
 case 147:
  cmdtxtredir(n, ">|", 1);
  break;
 case 143:
  cmdtxtredir(n, "<", 0);
  break;
 case 141:
  cmdtxtredir(n, "<>", 0);
  break;
 case 142:
  cmdtxtredir(n, "<&", 0);
  break;
 case 140:
 case 128:
  cmdputs("<<...");
  break;
 default:
  cmdputs("???");
  break;
 }
}
