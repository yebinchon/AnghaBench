
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; char* cohort_num; int parents; int unmade; int children; } ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int MAKE ;
 int debug_file ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int printf (char*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
add_wait_dep(void *v_cn, void *v_wn)
{
    GNode *cn = v_cn;
    GNode *wn = v_wn;

    if (cn == wn)
 return 1;

    if (cn == ((void*)0) || wn == ((void*)0)) {
 printf("bad wait dep %p %p\n", cn, wn);
 exit(4);
    }
    if (DEBUG(MAKE))
  fprintf(debug_file, ".WAIT: add dependency %s%s -> %s\n",
  cn->name, cn->cohort_num, wn->name);

    Lst_AtEnd(wn->children, cn);
    wn->unmade++;
    Lst_AtEnd(cn->parents, wn);
    return 0;
}
