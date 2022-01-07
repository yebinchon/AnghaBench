
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fname; } ;
union node {scalar_t__ type; TYPE_1__ nfile; } ;
struct heredoc {char* eofmark; struct heredoc* next; scalar_t__ striptabs; } ;


 scalar_t__ NFROMFD ;
 scalar_t__ NHERE ;
 scalar_t__ NTOFD ;
 scalar_t__ NXHERE ;
 int TRACE (char*) ;
 int TWORD ;
 int consumetoken (int ) ;
 int fixredir (union node*,char*,int ) ;
 struct heredoc* heredoc ;
 struct heredoc* heredoclist ;
 int makename () ;
 int noexpand (char*) ;
 scalar_t__ quoteflag ;
 union node* redirnode ;
 int rmescapes (char*) ;
 int synerror (char*) ;
 char* wordtext ;

__attribute__((used)) static void
parsefname(void)
{
 union node *n = redirnode;

 consumetoken(TWORD);
 if (n->type == NHERE) {
  struct heredoc *here = heredoc;
  struct heredoc *p;

  if (quoteflag == 0)
   n->type = NXHERE;
  TRACE(("Here document %d\n", n->type));
  if (here->striptabs) {
   while (*wordtext == '\t')
    wordtext++;
  }
  if (! noexpand(wordtext))
   synerror("Illegal eof marker for << redirection");
  rmescapes(wordtext);
  here->eofmark = wordtext;
  here->next = ((void*)0);
  if (heredoclist == ((void*)0))
   heredoclist = here;
  else {
   for (p = heredoclist ; p->next ; p = p->next);
   p->next = here;
  }
 } else if (n->type == NTOFD || n->type == NFROMFD) {
  fixredir(n, wordtext, 0);
 } else {
  n->nfile.fname = makename();
 }
}
