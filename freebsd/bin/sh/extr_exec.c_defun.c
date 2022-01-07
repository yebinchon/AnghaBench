
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union node {int dummy; } node ;
struct TYPE_2__ {int func; } ;
struct cmdentry {scalar_t__ special; TYPE_1__ u; int cmdtype; } ;


 int CMDFUNCTION ;
 int INTOFF ;
 int INTON ;
 int addcmdentry (char const*,struct cmdentry*) ;
 int copyfunc (union node*) ;

void
defun(const char *name, union node *func)
{
 struct cmdentry entry;

 INTOFF;
 entry.cmdtype = CMDFUNCTION;
 entry.u.func = copyfunc(func);
 entry.special = 0;
 addcmdentry(name, &entry);
 INTON;
}
