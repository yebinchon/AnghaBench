
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __u32 ;


 int IDMAP_TYPE_GROUP ;
 int do_name_to_id (struct svc_rqst*,int ,char const*,size_t,int *) ;

int
nfsd_map_name_to_gid(struct svc_rqst *rqstp, const char *name, size_t namelen,
  __u32 *id)
{
 return do_name_to_id(rqstp, IDMAP_TYPE_GROUP, name, namelen, id);
}
