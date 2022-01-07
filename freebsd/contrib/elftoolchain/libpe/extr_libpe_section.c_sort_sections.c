
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pe_scn; } ;
typedef TYPE_1__ PE ;


 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_SORT (int *,int ,int ,int ) ;
 int _PE_Scn ;
 int cmp_scn ;
 int ps_next ;

__attribute__((used)) static void
sort_sections(PE *pe)
{

 if (STAILQ_EMPTY(&pe->pe_scn))
  return;


 STAILQ_SORT(&pe->pe_scn, _PE_Scn, ps_next, cmp_scn);
}
