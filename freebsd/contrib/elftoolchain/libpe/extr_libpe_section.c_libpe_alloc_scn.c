
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ps_pe; int ps_b; } ;
typedef TYPE_1__ PE_Scn ;
typedef int PE ;


 int ENOMEM ;
 int STAILQ_INIT (int *) ;
 TYPE_1__* calloc (int,int) ;
 int errno ;

PE_Scn *
libpe_alloc_scn(PE *pe)
{
 PE_Scn *ps;

 if ((ps = calloc(1, sizeof(PE_Scn))) == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 STAILQ_INIT(&ps->ps_b);
 ps->ps_pe = pe;

 return (ps);
}
