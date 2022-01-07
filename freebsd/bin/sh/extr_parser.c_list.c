
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {union node* ch2; } ;
struct TYPE_5__ {int * redirect; union node* n; } ;
struct TYPE_4__ {int backgnd; } ;
union node {scalar_t__ type; TYPE_3__ nbinary; TYPE_2__ nredir; TYPE_1__ npipe; } ;
struct nredir {int dummy; } ;


 int CHKALIAS ;
 int CHKKWD ;
 int CHKNL ;
 void* NBACKGND ;
 scalar_t__ NPIPE ;
 scalar_t__ NREDIR ;
 int NSEMI ;




 union node* andor () ;
 int checkkwd ;
 int heredoclist ;
 union node* makebinary (int ,union node*,union node*) ;
 int parseheredoc () ;
 size_t peektoken () ;
 int pungetc () ;
 int readtoken () ;
 scalar_t__ stalloc (int) ;
 int synexpect (int) ;
 scalar_t__* tokendlist ;
 int tokpushback ;

__attribute__((used)) static union node *
list(int nlflag)
{
 union node *ntop, *n1, *n2, *n3;
 int tok;

 checkkwd = CHKNL | CHKKWD | CHKALIAS;
 if (!nlflag && tokendlist[peektoken()])
  return ((void*)0);
 ntop = n1 = ((void*)0);
 for (;;) {
  n2 = andor();
  tok = readtoken();
  if (tok == 131) {
   if (n2 != ((void*)0) && n2->type == NPIPE) {
    n2->npipe.backgnd = 1;
   } else if (n2 != ((void*)0) && n2->type == NREDIR) {
    n2->type = NBACKGND;
   } else {
    n3 = (union node *)stalloc(sizeof (struct nredir));
    n3->type = NBACKGND;
    n3->nredir.n = n2;
    n3->nredir.redirect = ((void*)0);
    n2 = n3;
   }
  }
  if (ntop == ((void*)0))
   ntop = n2;
  else if (n1 == ((void*)0)) {
   n1 = makebinary(NSEMI, ntop, n2);
   ntop = n1;
  }
  else {
   n3 = makebinary(NSEMI, n1->nbinary.ch2, n2);
   n1->nbinary.ch2 = n3;
   n1 = n3;
  }
  switch (tok) {
  case 131:
  case 128:
   tok = readtoken();

  case 129:
   if (tok == 129) {
    parseheredoc();
    if (nlflag)
     return ntop;
   } else if (tok == 130 && nlflag) {
    parseheredoc();
    return ntop;
   } else {
    tokpushback++;
   }
   checkkwd = CHKNL | CHKKWD | CHKALIAS;
   if (!nlflag && tokendlist[peektoken()])
    return ntop;
   break;
  case 130:
   if (heredoclist)
    parseheredoc();
   else
    pungetc();
   return ntop;
  default:
   if (nlflag)
    synexpect(-1);
   tokpushback++;
   return ntop;
  }
 }
}
