
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open_confirm {int oc_seqid; int oc_req_stateid; int * oc_stateowner; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int ) ;
 int READ_BUF (int) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_open_confirm(struct nfsd4_compoundargs *argp, struct nfsd4_open_confirm *open_conf)
{
 DECODE_HEAD;

 open_conf->oc_stateowner = ((void*)0);
 status = nfsd4_decode_stateid(argp, &open_conf->oc_req_stateid);
 if (status)
  return status;
 READ_BUF(4);
 READ32(open_conf->oc_seqid);

 DECODE_TAIL;
}
