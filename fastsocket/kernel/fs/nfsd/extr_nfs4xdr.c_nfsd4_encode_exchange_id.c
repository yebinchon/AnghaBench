
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct nfsd4_exchange_id {char clientid; int seqid; int flags; scalar_t__ spa_how; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {char* nodename; } ;


 int ADJUST_ARGS () ;
 int BUG_ON (int) ;
 int RESERVE_SPACE (int) ;
 scalar_t__ SP4_NONE ;
 int WRITE32 (int) ;
 int WRITE64 (int ) ;
 int WRITEMEM (char*,int) ;
 int XDR_QUADLEN (int) ;
 int strlen (char*) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static __be32
nfsd4_encode_exchange_id(struct nfsd4_compoundres *resp, int nfserr,
    struct nfsd4_exchange_id *exid)
{
 __be32 *p;
 char *major_id;
 char *server_scope;
 int major_id_sz;
 int server_scope_sz;
 uint64_t minor_id = 0;

 if (nfserr)
  return nfserr;

 major_id = utsname()->nodename;
 major_id_sz = strlen(major_id);
 server_scope = utsname()->nodename;
 server_scope_sz = strlen(server_scope);

 RESERVE_SPACE(
  8 +
  4 +
  4 +
  4 +
  8 +
  4 +
  (XDR_QUADLEN(major_id_sz) * 4) +
  4 +
  (XDR_QUADLEN(server_scope_sz) * 4) +
  4 );

 WRITEMEM(&exid->clientid, 8);
 WRITE32(exid->seqid);
 WRITE32(exid->flags);


 BUG_ON(exid->spa_how != SP4_NONE);
 WRITE32(exid->spa_how);


 WRITE64(minor_id);

 WRITE32(major_id_sz);
 WRITEMEM(major_id, major_id_sz);


 WRITE32(server_scope_sz);
 WRITEMEM(server_scope, server_scope_sz);


 WRITE32(0);
 ADJUST_ARGS();
 return 0;
}
