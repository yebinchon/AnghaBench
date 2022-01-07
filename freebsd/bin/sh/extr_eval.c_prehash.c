
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* args; } ;
union node {scalar_t__ type; TYPE_3__ ncmd; } ;
struct cmdentry {int dummy; } ;
struct TYPE_4__ {int text; } ;
struct TYPE_5__ {TYPE_1__ narg; } ;


 scalar_t__ NCMD ;
 int find_command (int ,struct cmdentry*,int ,int ) ;
 scalar_t__ goodname (int ) ;
 int pathval () ;

__attribute__((used)) static void
prehash(union node *n)
{
 struct cmdentry entry;

 if (n && n->type == NCMD && n->ncmd.args)
  if (goodname(n->ncmd.args->narg.text))
   find_command(n->ncmd.args->narg.text, &entry, 0,
         pathval());
}
