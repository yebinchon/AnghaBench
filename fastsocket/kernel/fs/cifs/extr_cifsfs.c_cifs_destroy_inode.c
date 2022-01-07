
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CIFS_I (struct inode*) ;
 int cifs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void
cifs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(cifs_inode_cachep, CIFS_I(inode));
}
