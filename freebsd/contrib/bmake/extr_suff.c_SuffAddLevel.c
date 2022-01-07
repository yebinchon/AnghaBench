
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int l; TYPE_2__* s; } ;
struct TYPE_7__ {TYPE_1__* suff; } ;
struct TYPE_6__ {int children; } ;
typedef TYPE_2__ Src ;
typedef TYPE_3__ LstSrc ;
typedef int Lst ;


 int Lst_ForEach (int ,int ,TYPE_3__*) ;
 int SuffAddSrc ;

__attribute__((used)) static void
SuffAddLevel(Lst l, Src *targ)
{
    LstSrc ls;

    ls.s = targ;
    ls.l = l;

    Lst_ForEach(targ->suff->children, SuffAddSrc, &ls);
}
