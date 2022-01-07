
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_callback {void* type; void* expiry; void* version; } ;
typedef int __be32 ;


 void* ntohl (int ) ;

__attribute__((used)) static void xdr_decode_AFSCallBack_raw(const __be32 **_bp,
           struct afs_callback *cb)
{
 const __be32 *bp = *_bp;

 cb->version = ntohl(*bp++);
 cb->expiry = ntohl(*bp++);
 cb->type = ntohl(*bp++);
 *_bp = bp;
}
