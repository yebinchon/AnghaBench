
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {union node* com; } ;
struct TYPE_3__ {struct nodelist* cmdlist; scalar_t__ backgnd; } ;
union node {TYPE_2__ nnot; int type; TYPE_1__ npipe; } ;
struct npipe {int dummy; } ;
struct nodelist {struct nodelist* next; union node* n; } ;
struct nnot {int dummy; } ;


 int CHKALIAS ;
 int CHKKWD ;
 int CHKNL ;
 int NNOT ;
 int NPIPE ;
 int TNOT ;
 int TPIPE ;
 int TRACE (char*) ;
 int checkkwd ;
 void* command () ;
 int readtoken () ;
 scalar_t__ stalloc (int) ;
 int tokpushback ;

__attribute__((used)) static union node *
pipeline(void)
{
 union node *n1, *n2, *pipenode;
 struct nodelist *lp, *prev;
 int negate, t;

 negate = 0;
 checkkwd = CHKNL | CHKKWD | CHKALIAS;
 TRACE(("pipeline: entered\n"));
 while (readtoken() == TNOT)
  negate = !negate;
 tokpushback++;
 n1 = command();
 if (readtoken() == TPIPE) {
  pipenode = (union node *)stalloc(sizeof (struct npipe));
  pipenode->type = NPIPE;
  pipenode->npipe.backgnd = 0;
  lp = (struct nodelist *)stalloc(sizeof (struct nodelist));
  pipenode->npipe.cmdlist = lp;
  lp->n = n1;
  do {
   prev = lp;
   lp = (struct nodelist *)stalloc(sizeof (struct nodelist));
   checkkwd = CHKNL | CHKKWD | CHKALIAS;
   t = readtoken();
   tokpushback++;
   if (t == TNOT)
    lp->n = pipeline();
   else
    lp->n = command();
   prev->next = lp;
  } while (readtoken() == TPIPE);
  lp->next = ((void*)0);
  n1 = pipenode;
 }
 tokpushback++;
 if (negate) {
  n2 = (union node *)stalloc(sizeof (struct nnot));
  n2->type = NNOT;
  n2->nnot.com = n1;
  return n2;
 } else
  return n1;
}
