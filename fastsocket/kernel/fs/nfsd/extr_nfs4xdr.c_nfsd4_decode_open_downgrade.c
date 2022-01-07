
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open_downgrade {int od_share_deny; int od_share_access; int od_seqid; int od_stateid; int * od_stateowner; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int ) ;
 int READ_BUF (int) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_open_downgrade(struct nfsd4_compoundargs *argp, struct nfsd4_open_downgrade *open_down)
{
 DECODE_HEAD;

 open_down->od_stateowner = ((void*)0);
 status = nfsd4_decode_stateid(argp, &open_down->od_stateid);
 if (status)
  return status;
 READ_BUF(12);
 READ32(open_down->od_seqid);
 READ32(open_down->od_share_access);
 READ32(open_down->od_share_deny);

 DECODE_TAIL;
}
