
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct nfsd4_destroy_session {TYPE_1__ sessionid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int COPYMEM (int ,int ) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int NFS4_MAX_SESSIONID_LEN ;
 int READ_BUF (int ) ;

__attribute__((used)) static __be32
nfsd4_decode_destroy_session(struct nfsd4_compoundargs *argp,
        struct nfsd4_destroy_session *destroy_session)
{
 DECODE_HEAD;
 READ_BUF(NFS4_MAX_SESSIONID_LEN);
 COPYMEM(destroy_session->sessionid.data, NFS4_MAX_SESSIONID_LEN);

 DECODE_TAIL;
}
