
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_fid {void* unique; void* vnode; void* vid; } ;
typedef int __be32 ;


 void* ntohl (int ) ;

__attribute__((used)) static void xdr_decode_AFSFid(const __be32 **_bp, struct afs_fid *fid)
{
 const __be32 *bp = *_bp;

 fid->vid = ntohl(*bp++);
 fid->vnode = ntohl(*bp++);
 fid->unique = ntohl(*bp++);
 *_bp = bp;
}
