
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct svc_rqst {scalar_t__ rq_flavor; } ;


 scalar_t__ RPC_AUTH_GSS ;
 int idmap_id_to_name (struct svc_rqst*,int,int,char*) ;
 scalar_t__ nfs4_disable_idmapping ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
do_id_to_name(struct svc_rqst *rqstp, int type, uid_t id, char *name)
{
 if (nfs4_disable_idmapping && rqstp->rq_flavor < RPC_AUTH_GSS)
  return sprintf(name, "%u", id);
 return idmap_id_to_name(rqstp, type, id, name);
}
