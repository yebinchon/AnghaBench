
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vers_op { ____Placeholder_vers_op } vers_op ;


 int NFSD_ACL_NRVERS ;


 int NFSD_MINVERS ;
 int NFSD_NRVERS ;


 int ** nfsd_acl_version ;
 int ** nfsd_acl_versions ;
 int ** nfsd_version ;
 int ** nfsd_versions ;

int nfsd_vers(int vers, enum vers_op change)
{
 if (vers < NFSD_MINVERS || vers >= NFSD_NRVERS)
  return 0;
 switch(change) {
 case 129:
  nfsd_versions[vers] = nfsd_version[vers];




  break;
 case 130:
  nfsd_versions[vers] = ((void*)0);




  break;
 case 128:
  return nfsd_versions[vers] != ((void*)0);
 case 131:
  return nfsd_version[vers] != ((void*)0);
 }
 return 0;
}
