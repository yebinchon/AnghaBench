
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ps_b; } ;
typedef TYPE_1__ PE_Scn ;


 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_SORT (int *,int ,int ,int ) ;
 int _PE_SecBuf ;
 int cmp_sb ;
 int sb_next ;

__attribute__((used)) static void
sort_buffers(PE_Scn *ps)
{

 if (STAILQ_EMPTY(&ps->ps_b))
  return;

 STAILQ_SORT(&ps->ps_b, _PE_SecBuf, sb_next, cmp_sb);
}
