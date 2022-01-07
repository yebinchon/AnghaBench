
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xdr_netobj {int data; int len; } ;
struct svc_rqst {int rq_cred; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_5__ {int cl_id; int cl_boot; } ;
struct nfsd4_setclientid {TYPE_3__ se_confirm; TYPE_1__ se_clientid; int se_verf; int se_name; int se_namelen; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_6__ {int cl_id; int cl_boot; } ;
struct nfs4_client {TYPE_4__ cl_confirm; TYPE_2__ cl_clientid; scalar_t__ cl_minorversion; int cl_verifier; int cl_addr; int cl_cred; } ;
typedef int nfs4_verifier ;
typedef int addr_str ;
typedef scalar_t__ __be32 ;


 int HEXDIR_LEN ;
 int INET6_ADDRSTRLEN ;
 int add_to_unconfirmed (struct nfs4_client*,unsigned int) ;
 int check_name (struct xdr_netobj) ;
 unsigned int clientstr_hashval (char*) ;
 int copy_clid (struct nfs4_client*,struct nfs4_client*) ;
 struct nfs4_client* create_client (struct xdr_netobj,char*,struct svc_rqst*,int *) ;
 int dprintk (char*,char*) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client_by_str (char*,unsigned int,int) ;
 struct nfs4_client* find_unconfirmed_client_by_str (char*,unsigned int,int) ;
 int gen_callback (struct nfs4_client*,struct nfsd4_setclientid*,struct svc_rqst*) ;
 int gen_clid (struct nfs4_client*) ;
 int memcpy (int ,int ,int) ;
 int nfs4_lock_state () ;
 scalar_t__ nfs4_make_rec_clidname (char*,struct xdr_netobj*) ;
 int nfs4_unlock_state () ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_clid_inuse ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_resource ;
 int rpc_ntop (struct sockaddr*,char*,int) ;
 int same_creds (int *,int *) ;
 scalar_t__ same_verf (int *,int *) ;

__be32
nfsd4_setclientid(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    struct nfsd4_setclientid *setclid)
{
 struct xdr_netobj clname = {
  .len = setclid->se_namelen,
  .data = setclid->se_name,
 };
 nfs4_verifier clverifier = setclid->se_verf;
 unsigned int strhashval;
 struct nfs4_client *conf, *unconf, *new;
 __be32 status;
 char dname[HEXDIR_LEN];

 if (!check_name(clname))
  return nfserr_inval;

 status = nfs4_make_rec_clidname(dname, &clname);
 if (status)
  return status;






 strhashval = clientstr_hashval(dname);

 nfs4_lock_state();
 conf = find_confirmed_client_by_str(dname, strhashval, 0);
 if (conf) {

  status = nfserr_clid_inuse;
  if (!same_creds(&conf->cl_cred, &rqstp->rq_cred)) {
   char addr_str[INET6_ADDRSTRLEN];
   rpc_ntop((struct sockaddr *) &conf->cl_addr, addr_str,
     sizeof(addr_str));
   dprintk("NFSD: setclientid: string in use by client "
    "at %s\n", addr_str);
   goto out;
  }
 }





 unconf = find_unconfirmed_client_by_str(dname, strhashval, 0);
 status = nfserr_resource;
 if (!conf) {




  if (unconf)
   expire_client(unconf);
  new = create_client(clname, dname, rqstp, &clverifier);
  if (new == ((void*)0))
   goto out;
  gen_clid(new);
 } else if (same_verf(&conf->cl_verifier, &clverifier)) {




  if (unconf) {





   expire_client(unconf);
  }
  new = create_client(clname, dname, rqstp, &clverifier);
  if (new == ((void*)0))
   goto out;
  copy_clid(new, conf);
 } else if (!unconf) {





  new = create_client(clname, dname, rqstp, &clverifier);
  if (new == ((void*)0))
   goto out;
  gen_clid(new);
 } else {





  expire_client(unconf);
  new = create_client(clname, dname, rqstp, &clverifier);
  if (new == ((void*)0))
   goto out;
  gen_clid(new);
 }




 new->cl_minorversion = 0;
 gen_callback(new, setclid, rqstp);
 add_to_unconfirmed(new, strhashval);
 setclid->se_clientid.cl_boot = new->cl_clientid.cl_boot;
 setclid->se_clientid.cl_id = new->cl_clientid.cl_id;
 memcpy(setclid->se_confirm.data, new->cl_confirm.data, sizeof(setclid->se_confirm.data));
 status = nfs_ok;
out:
 nfs4_unlock_state();
 return status;
}
