
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_acl {scalar_t__ naces; } ;
struct nfs4_ace {int dummy; } ;


 int GFP_KERNEL ;
 struct nfs4_acl* kmalloc (int,int ) ;

struct nfs4_acl *
nfs4_acl_new(int n)
{
 struct nfs4_acl *acl;

 acl = kmalloc(sizeof(*acl) + n*sizeof(struct nfs4_ace), GFP_KERNEL);
 if (acl == ((void*)0))
  return ((void*)0);
 acl->naces = 0;
 return acl;
}
