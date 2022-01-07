
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; } ;
struct svc_export {char* ex_pathname; } ;
typedef int __be32 ;
struct TYPE_2__ {char* ex_pathname; } ;


 int NFS4_FHSIZE ;
 int dprintk (char*,char*,char*) ;
 int exp_pseudoroot (struct svc_rqst*,struct svc_fh*) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 int nfserr_notsupp ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

__attribute__((used)) static char *nfsd4_path(struct svc_rqst *rqstp, struct svc_export *exp, __be32 *stat)
{
 struct svc_fh tmp_fh;
 char *path = ((void*)0), *rootpath;
 size_t rootlen;

 fh_init(&tmp_fh, NFS4_FHSIZE);
 *stat = exp_pseudoroot(rqstp, &tmp_fh);
 if (*stat)
  return ((void*)0);
 rootpath = tmp_fh.fh_export->ex_pathname;

 path = exp->ex_pathname;

 rootlen = strlen(rootpath);
 if (strncmp(path, rootpath, rootlen)) {
  dprintk("nfsd: fs_locations failed;"
   "%s is not contained in %s\n", path, rootpath);
  *stat = nfserr_notsupp;
  path = ((void*)0);
  goto out;
 }
 path += rootlen;
out:
 fh_put(&tmp_fh);
 return path;
}
