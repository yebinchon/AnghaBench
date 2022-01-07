
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {union node* redirect; union node* args; } ;
struct TYPE_5__ {char* text; union node* next; } ;
struct TYPE_4__ {union node* next; } ;
union node {TYPE_3__ ncmd; int type; TYPE_2__ narg; TYPE_1__ nfile; } ;
struct ncmd {int dummy; } ;


 int CHKALIAS ;
 int NCMD ;
 int NDEFUN ;
 scalar_t__ TLP ;
 scalar_t__ TREDIR ;
 int TRP ;
 scalar_t__ TWORD ;
 int checkkwd ;
 union node* command () ;
 int consumetoken (int ) ;
 scalar_t__ find_builtin (char*,int*) ;
 scalar_t__ funclinno ;
 int isassignment (int ) ;
 scalar_t__ lasttoken ;
 union node* makename () ;
 int noexpand (char*) ;
 int parsefname () ;
 scalar_t__ plinno ;
 scalar_t__ quoteflag ;
 scalar_t__ readtoken () ;
 union node* redirnode ;
 int rmescapes (char*) ;
 scalar_t__ stalloc (int) ;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;
 int synerror (char*) ;
 int tokpushback ;
 int wordtext ;

__attribute__((used)) static union node *
simplecmd(union node **rpp, union node *redir)
{
 union node *args, **app;
 union node **orig_rpp = rpp;
 union node *n = ((void*)0);
 int special;
 int savecheckkwd;



 if (redir == ((void*)0))
  rpp = &redir;

 args = ((void*)0);
 app = &args;





 orig_rpp = rpp;

 savecheckkwd = CHKALIAS;

 for (;;) {
  checkkwd = savecheckkwd;
  if (readtoken() == TWORD) {
   n = makename();
   *app = n;
   app = &n->narg.next;
   if (savecheckkwd != 0 && !isassignment(wordtext))
    savecheckkwd = 0;
  } else if (lasttoken == TREDIR) {
   *rpp = n = redirnode;
   rpp = &n->nfile.next;
   parsefname();
  } else if (lasttoken == TLP && app == &args->narg.next
         && rpp == orig_rpp) {

   consumetoken(TRP);
   funclinno = plinno;






   if (!noexpand(n->narg.text) || quoteflag ||
       strchr(n->narg.text, '/') ||
       strchr("!%*+-=?@}~",
    n->narg.text[strlen(n->narg.text) - 1]))
    synerror("Bad function name");
   rmescapes(n->narg.text);
   if (find_builtin(n->narg.text, &special) >= 0 &&
       special)
    synerror("Cannot override a special builtin with a function");
   n->type = NDEFUN;
   n->narg.next = command();
   funclinno = 0;
   return n;
  } else {
   tokpushback++;
   break;
  }
 }
 *app = ((void*)0);
 *rpp = ((void*)0);
 n = (union node *)stalloc(sizeof (struct ncmd));
 n->type = NCMD;
 n->ncmd.args = args;
 n->ncmd.redirect = redir;
 return n;
}
