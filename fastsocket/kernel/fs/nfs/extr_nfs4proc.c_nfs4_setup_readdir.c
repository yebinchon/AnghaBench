
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nfs4_readdir_arg {int count; int cookie; char verifier; int pgbase; int * pages; } ;
struct dentry {TYPE_1__* d_parent; int d_inode; } ;
typedef char __be32 ;
struct TYPE_2__ {int d_inode; } ;


 int BUG_ON (int) ;
 int FATTR4_WORD0_FILEID ;
 int KM_USER0 ;
 int NFS_FILEID (int ) ;
 void* htonl (int) ;
 char* kmap_atomic (int ,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 char* xdr_encode_hyper (char*,int ) ;
 void* xdr_one ;
 void* xdr_two ;
 void* xdr_zero ;

__attribute__((used)) static void nfs4_setup_readdir(u64 cookie, __be32 *verifier, struct dentry *dentry,
  struct nfs4_readdir_arg *readdir)
{
 __be32 *start, *p;

 BUG_ON(readdir->count < 80);
 if (cookie > 2) {
  readdir->cookie = cookie;
  memcpy(&readdir->verifier, verifier, sizeof(readdir->verifier));
  return;
 }

 readdir->cookie = 0;
 memset(&readdir->verifier, 0, sizeof(readdir->verifier));
 if (cookie == 2)
  return;
 start = p = kmap_atomic(*readdir->pages, KM_USER0);

 if (cookie == 0) {
  *p++ = xdr_one;
  *p++ = xdr_zero;
  *p++ = xdr_one;
  *p++ = xdr_one;
  memcpy(p, ".\0\0\0", 4);
  p++;
  *p++ = xdr_one;
  *p++ = htonl(FATTR4_WORD0_FILEID);
  *p++ = htonl(8);
  p = xdr_encode_hyper(p, NFS_FILEID(dentry->d_inode));
 }

 *p++ = xdr_one;
 *p++ = xdr_zero;
 *p++ = xdr_two;
 *p++ = xdr_two;
 memcpy(p, "..\0\0", 4);
 p++;
 *p++ = xdr_one;
 *p++ = htonl(FATTR4_WORD0_FILEID);
 *p++ = htonl(8);
 p = xdr_encode_hyper(p, NFS_FILEID(dentry->d_parent->d_inode));

 readdir->pgbase = (char *)p - (char *)start;
 readdir->count -= readdir->pgbase;
 kunmap_atomic(start, KM_USER0);
}
