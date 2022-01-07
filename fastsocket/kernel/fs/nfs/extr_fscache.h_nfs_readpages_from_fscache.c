
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int dummy; } ;


 int ENOBUFS ;

__attribute__((used)) static inline int nfs_readpages_from_fscache(struct nfs_open_context *ctx,
          struct inode *inode,
          struct address_space *mapping,
          struct list_head *pages,
          unsigned *nr_pages)
{
 return -ENOBUFS;
}
