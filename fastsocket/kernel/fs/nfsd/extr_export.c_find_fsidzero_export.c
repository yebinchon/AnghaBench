
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;


 int FSID_NUM ;
 int mk_fsid (int ,int *,int ,int ,int ,int *) ;
 struct svc_export* rqst_exp_find (struct svc_rqst*,int ,int *) ;

__attribute__((used)) static struct svc_export *find_fsidzero_export(struct svc_rqst *rqstp)
{
 u32 fsidv[2];

 mk_fsid(FSID_NUM, fsidv, 0, 0, 0, ((void*)0));

 return rqst_exp_find(rqstp, FSID_NUM, fsidv);
}
