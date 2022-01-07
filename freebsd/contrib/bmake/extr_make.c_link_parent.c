
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unmade; int parents; int children; } ;
typedef TYPE_1__ GNode ;


 int Lst_AtEnd (int ,TYPE_1__*) ;

__attribute__((used)) static int
link_parent(void *cnp, void *pnp)
{
    GNode *cn = cnp;
    GNode *pn = pnp;

    Lst_AtEnd(pn->children, cn);
    Lst_AtEnd(cn->parents, pn);
    pn->unmade++;
    return 0;
}
