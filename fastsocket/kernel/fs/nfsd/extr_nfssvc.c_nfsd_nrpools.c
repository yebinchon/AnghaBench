
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sv_nrpools; } ;


 TYPE_1__* nfsd_serv ;

int nfsd_nrpools(void)
{
 if (nfsd_serv == ((void*)0))
  return 0;
 else
  return nfsd_serv->sv_nrpools;
}
