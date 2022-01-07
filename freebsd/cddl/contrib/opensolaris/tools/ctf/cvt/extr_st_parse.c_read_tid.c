
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int t_id; struct TYPE_8__* t_tdesc; int t_type; } ;
typedef TYPE_1__ tdesc_t ;


 int TYPEDEF ;
 int addhash (TYPE_1__*,int) ;
 int assert (int) ;
 char* id (char*,int*) ;
 TYPE_1__* lookup (int) ;
 char* tdefdecl (char*,int,TYPE_1__**) ;
 TYPE_1__* unres_new (int) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static char *
read_tid(char *cp, tdesc_t **tdpp)
{
 tdesc_t *tdp;
 int tid;

 cp = id(cp, &tid);

 assert(tid != 0);

 if (*cp == '=') {
  if (!(cp = tdefdecl(cp + 1, tid, &tdp)))
   return (((void*)0));
  if (tdp->t_id && tdp->t_id != tid) {
   tdesc_t *ntdp = xcalloc(sizeof (*ntdp));

   ntdp->t_type = TYPEDEF;
   ntdp->t_tdesc = tdp;
   tdp = ntdp;
  }
  addhash(tdp, tid);
 } else if ((tdp = lookup(tid)) == ((void*)0))
  tdp = unres_new(tid);

 *tdpp = tdp;
 return (cp);
}
