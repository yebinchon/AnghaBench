
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client_reclaim {int dummy; } ;


 int GFP_KERNEL ;
 struct nfs4_client_reclaim* kmalloc (int,int ) ;

__attribute__((used)) static inline struct nfs4_client_reclaim *
alloc_reclaim(void)
{
 return kmalloc(sizeof(struct nfs4_client_reclaim), GFP_KERNEL);
}
