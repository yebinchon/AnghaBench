
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union node {int dummy; } node ;
struct heredoc {TYPE_2__* here; int striptabs; int eofmark; struct heredoc* next; } ;
struct TYPE_3__ {union node* doc; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ nhere; } ;


 int DQSYNTAX ;
 scalar_t__ NHERE ;
 int SQSYNTAX ;
 struct heredoc* heredoclist ;
 union node* makename () ;
 scalar_t__ needprompt ;
 int pgetc () ;
 int readtoken1 (int ,int ,int ,int ) ;
 int setprompt (int) ;

__attribute__((used)) static void
parseheredoc(void)
{
 struct heredoc *here;
 union node *n;

 while (heredoclist) {
  here = heredoclist;
  heredoclist = here->next;
  if (needprompt) {
   setprompt(2);
   needprompt = 0;
  }
  readtoken1(pgetc(), here->here->type == NHERE? SQSYNTAX : DQSYNTAX,
    here->eofmark, here->striptabs);
  n = makename();
  here->here->nhere.doc = n;
 }
}
