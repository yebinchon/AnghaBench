
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setclientid_confirm {int sc_confirm; int sc_clientid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int nfs4_verifier ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;

__attribute__((used)) static __be32
nfsd4_decode_setclientid_confirm(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid_confirm *scd_c)
{
 DECODE_HEAD;

 READ_BUF(8 + sizeof(nfs4_verifier));
 COPYMEM(&scd_c->sc_clientid, 8);
 COPYMEM(&scd_c->sc_confirm, sizeof(nfs4_verifier));

 DECODE_TAIL;
}
