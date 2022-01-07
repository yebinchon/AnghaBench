
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int coda_cache_clear_inode (struct inode*) ;

__attribute__((used)) static void coda_clear_inode(struct inode *inode)
{
 coda_cache_clear_inode(inode);
}
