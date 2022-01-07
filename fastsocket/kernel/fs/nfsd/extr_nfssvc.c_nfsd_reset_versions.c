
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * pg_vers; } ;
struct TYPE_3__ {scalar_t__* pg_vers; } ;


 int NFSD_ACL_MINVERS ;
 int NFSD_ACL_NRVERS ;
 int NFSD_MINVERS ;
 int NFSD_NRVERS ;
 TYPE_2__ nfsd_acl_program ;
 int * nfsd_acl_version ;
 TYPE_1__ nfsd_program ;
 scalar_t__* nfsd_version ;

void nfsd_reset_versions(void)
{
 int found_one = 0;
 int i;

 for (i = NFSD_MINVERS; i < NFSD_NRVERS; i++) {
  if (nfsd_program.pg_vers[i])
   found_one = 1;
 }

 if (!found_one) {
  for (i = NFSD_MINVERS; i < NFSD_NRVERS; i++)
   nfsd_program.pg_vers[i] = nfsd_version[i];





 }
}
