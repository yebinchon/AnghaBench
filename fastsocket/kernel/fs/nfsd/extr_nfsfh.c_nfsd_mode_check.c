
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct svc_rqst {int rq_vers; } ;
typedef int __be32 ;


 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFMT ;
 int nfserr_inval ;
 int nfserr_isdir ;
 int nfserr_notdir ;
 int nfserr_symlink ;

__attribute__((used)) static inline __be32
nfsd_mode_check(struct svc_rqst *rqstp, umode_t mode, int type)
{

 if (type > 0 && (mode & S_IFMT) != type) {
  if (rqstp->rq_vers == 4 && (mode & S_IFMT) == S_IFLNK)
   return nfserr_symlink;
  else if (type == S_IFDIR)
   return nfserr_notdir;
  else if ((mode & S_IFMT) == S_IFDIR)
   return nfserr_isdir;
  else
   return nfserr_inval;
 }
 if (type < 0 && (mode & S_IFMT) == -type) {
  if (rqstp->rq_vers == 4 && (mode & S_IFMT) == S_IFLNK)
   return nfserr_symlink;
  else if (type == -S_IFDIR)
   return nfserr_isdir;
  else
   return nfserr_notdir;
 }
 return 0;
}
