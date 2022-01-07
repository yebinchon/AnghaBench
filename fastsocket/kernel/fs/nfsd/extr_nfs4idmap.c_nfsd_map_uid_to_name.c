
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __u32 ;


 int IDMAP_TYPE_USER ;
 int do_id_to_name (struct svc_rqst*,int ,int ,char*) ;

int
nfsd_map_uid_to_name(struct svc_rqst *rqstp, __u32 id, char *name)
{
 return do_id_to_name(rqstp, IDMAP_TYPE_USER, id, name);
}
