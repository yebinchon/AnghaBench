
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {unsigned int op_share_deny; unsigned int op_share_access; } ;
struct nfs4_stateid {int st_deny_bmap; int st_access_bmap; } ;


 int set_access (unsigned int*,int ) ;
 int set_deny (unsigned int*,int ) ;

__attribute__((used)) static int
test_share(struct nfs4_stateid *stp, struct nfsd4_open *open) {
 unsigned int access, deny;

 set_access(&access, stp->st_access_bmap);
 set_deny(&deny, stp->st_deny_bmap);
 if ((access & open->op_share_deny) || (deny & open->op_share_access))
  return 0;
 return 1;
}
