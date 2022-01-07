
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_access {int ac_req_access; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int ) ;
 int READ_BUF (int) ;

__attribute__((used)) static __be32
nfsd4_decode_access(struct nfsd4_compoundargs *argp, struct nfsd4_access *access)
{
 DECODE_HEAD;

 READ_BUF(4);
 READ32(access->ac_req_access);

 DECODE_TAIL;
}
