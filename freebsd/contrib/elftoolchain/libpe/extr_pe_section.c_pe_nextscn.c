
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pe_scn; } ;
struct TYPE_9__ {int ps_ndx; } ;
typedef TYPE_1__ PE_Scn ;
typedef TYPE_2__ PE ;


 int EINVAL ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int errno ;
 int ps_next ;

PE_Scn *
pe_nextscn(PE *pe, PE_Scn *ps)
{

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 if (ps == ((void*)0))
  ps = STAILQ_FIRST(&pe->pe_scn);
 else
  ps = STAILQ_NEXT(ps, ps_next);

 while (ps != ((void*)0)) {
  if (ps->ps_ndx >= 1 && ps->ps_ndx <= 0xFFFFU)
   return (ps);
  ps = STAILQ_NEXT(ps, ps_next);
 }

 return (((void*)0));
}
