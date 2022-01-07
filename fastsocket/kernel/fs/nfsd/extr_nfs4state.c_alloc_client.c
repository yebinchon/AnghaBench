
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {int len; int data; } ;
struct TYPE_2__ {int len; int * data; } ;
struct nfs4_client {TYPE_1__ cl_name; } ;


 int GFP_KERNEL ;
 int kfree (struct nfs4_client*) ;
 int * kmalloc (int ,int ) ;
 struct nfs4_client* kzalloc (int,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static struct nfs4_client *alloc_client(struct xdr_netobj name)
{
 struct nfs4_client *clp;

 clp = kzalloc(sizeof(struct nfs4_client), GFP_KERNEL);
 if (clp == ((void*)0))
  return ((void*)0);
 clp->cl_name.data = kmalloc(name.len, GFP_KERNEL);
 if (clp->cl_name.data == ((void*)0)) {
  kfree(clp);
  return ((void*)0);
 }
 memcpy(clp->cl_name.data, name.data, name.len);
 clp->cl_name.len = name.len;
 return clp;
}
