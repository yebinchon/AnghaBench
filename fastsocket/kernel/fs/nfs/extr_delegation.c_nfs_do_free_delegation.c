
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int dummy; } ;


 int kfree (struct nfs_delegation*) ;

__attribute__((used)) static void nfs_do_free_delegation(struct nfs_delegation *delegation)
{
 kfree(delegation);
}
