
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ si_generation; } ;
typedef TYPE_1__ stateid_t ;


 int HAS_SESSION ;
 int nfs_ok ;
 int nfserr_bad_stateid ;
 int nfserr_old_stateid ;

__attribute__((used)) static int check_stateid_generation(stateid_t *in, stateid_t *ref, int flags)
{




 if ((flags & HAS_SESSION) && in->si_generation == 0)
  goto out;


 if (in->si_generation > ref->si_generation)
  return nfserr_bad_stateid;
 if (in->si_generation < ref->si_generation)
  return nfserr_old_stateid;
out:
 return nfs_ok;
}
