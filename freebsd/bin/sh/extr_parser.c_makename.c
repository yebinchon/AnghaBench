
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backquote; int text; int * next; } ;
union node {TYPE_1__ narg; int type; } ;
struct narg {int dummy; } ;


 int NARG ;
 int backquotelist ;
 scalar_t__ stalloc (int) ;
 int wordtext ;

__attribute__((used)) static union node *
makename(void)
{
 union node *n;

 n = (union node *)stalloc(sizeof (struct narg));
 n->type = NARG;
 n->narg.next = ((void*)0);
 n->narg.text = wordtext;
 n->narg.backquote = backquotelist;
 return n;
}
