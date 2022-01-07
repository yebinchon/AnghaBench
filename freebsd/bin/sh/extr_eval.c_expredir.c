
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vname; } ;
struct TYPE_4__ {int expfname; int fname; union node* next; } ;
union node {int type; TYPE_1__ ndup; TYPE_2__ nfile; } ;
struct arglist {int * args; } ;


 int EXP_TILDE ;
 int emptyarglist (struct arglist*) ;
 int expandarg (int ,struct arglist*,int ) ;
 int exphere (union node*,struct arglist*) ;
 int fixredir (union node*,int ,int) ;

__attribute__((used)) static void
expredir(union node *n)
{
 union node *redir;

 for (redir = n ; redir ; redir = redir->nfile.next) {
  struct arglist fn;
  emptyarglist(&fn);
  switch (redir->type) {
  case 133:
  case 130:
  case 131:
  case 135:
  case 134:
   expandarg(redir->nfile.fname, &fn, EXP_TILDE);
   redir->nfile.expfname = fn.args[0];
   break;
  case 132:
  case 129:
   if (redir->ndup.vname) {
    expandarg(redir->ndup.vname, &fn, EXP_TILDE);
    fixredir(redir, fn.args[0], 1);
   }
   break;
  case 128:
   exphere(redir, &fn);
   break;
  }
 }
}
